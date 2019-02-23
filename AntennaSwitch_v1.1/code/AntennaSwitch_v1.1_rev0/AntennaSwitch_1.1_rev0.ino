#include "mavlink/common/mavlink.h"
#include "AntennaSwitch.h"
#include <math.h>

int ctrl = PA8;

MAVHeading_t mavheading, trackerheading;
MAVCoordinate_t mavpos, trackerpos;

void setup()
{
  pinMode(ctrl, OUTPUT);
  Serial.begin(57600);
  MAVSerial.begin(57600);
}

void loop()
{
  // definisi variabel msg dan status
  mavlink_message_t msg;
  mavlink_status_t status;

  // ada masukan dari MAVSerial
  while (MAVSerial.available() > 0 )
  {
    // membaca masukan
    uint8_t c = MAVSerial.read();
    
    // masukan bisa di-parse oleh mavlink
    if (mavlink_parse_char(MAVLINK_COMM_0, c, &msg, &status)) {
      //SerialUSB.println("END");
      handle_message(&msg, &status);
    }
  }

  trackerheading = TrackerHeading(mavpos, trackerpos, mavheading);
  digitalWrite(ctrl, controlSwitch(trackerheading));

}
