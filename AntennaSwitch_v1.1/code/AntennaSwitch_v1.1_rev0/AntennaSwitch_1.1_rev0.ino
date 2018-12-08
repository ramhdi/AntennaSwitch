#include "mavlink/mavlink.h"
#include <math.h>

#define MAVSerial Serial3

int ctrl = PA8;

typedef struct _coordinate
{
  float lat, lon;
} MAVCoordinate_t;

typedef int MAVHeading_t;

MAVHeading_t mavheading, trackerheading;
MAVCoordinate_t mavpos, trackerpos;

void setup()
{
  pinMode(ctrl, OUTPUT);
  MAVSerial.begin(57600);
}

void loop()
{
  trackerheading = TrackerHeading(mavpos, trackerpos, mavheading);
  digitalWrite(ctrl, controlSwitch(trackerheading));

}

void ParseHeading();

MAVHeading_t TrackerHeading(MAVCoordinate_t mavpos, MAVCoordinate_t trackerpos, MAVHeading_t mavheading)
{
  // delta x and y
  MAVCoordinate_t relpos;
  relpos.lat = trackerpos.lat - mavpos.lat; // dy
  relpos.lon = trackerpos.lon - mavpos.lon; // dx

  // coodinate rotation
  MAVCoordinate_t rotpos;
  rotpos.lat = -sin(mavheading) * relpos.lon + cos(mavheading) * relpos.lat; // dy'
  rotpos.lon = cos(mavheading) * relpos.lon + sin(mavheading) * relpos.lat; // dx'

  // inverse tangent
  MAVHeading_t th = atan2(abs(rotpos.lat), abs(rotpos.lon));

  // heading correction
  if (rotpos.lon > 0 && rotpos.lat > 0)
  {
    th = 90 - th;
  }

  else if (rotpos.lon > 0 && rotpos.lat <= 0)
  {
    th = 180 - th;
  }

  else if (rotpos.lon <= 0 && rotpos.lat <= 0)
  {
    th = 270 - th;
  }

  else
  {
    th = 360 - th;
  }

  return th;
}

bool controlSwitch(MAVHeading_t th)
{
  if (th > 0 && th <= 180) return 0;
  else return 1;
}
