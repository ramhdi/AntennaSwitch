#include "AntennaSwitch.h"

// MAVHeading_t TrackerHeading(MAVCoordinate_t mavpos, MAVCoordinate_t trackerpos, MAVHeading_t mavheading)
// method untuk menghitung heading home relatif terhadap uav
// berdasarkan data koordinat uav dan home
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

// bool controlSwitch(MAVHeading_t th)
// method untuk mengatur keluaran switch berdasarkan heading home
// relatif terhadap uav
bool controlSwitch(MAVHeading_t th)
{
  if (th > 0 && th <= 180) return 0;
  else return 1;
}

// void handle_message(mavlink_message_t, mavlink_status_t)
// method untuk menghandle message dari pixhawk
void handle_message(mavlink_message_t *msg, mavlink_status_t *status, MAVCoordinate_t* _uavpos, MAVCoordinate_t* _trackerpos)
{
  // switch kondisi dari message id
  switch (msg->msgid)
  {
    // msgid = posisi gps raw/mentah
    case MAVLINK_MSG_ID_GPS_RAW_INT:
      // decode isi msg menjadi isi data gps
      mavlink_gps_raw_int_t gps_raw;
      mavlink_msg_gps_raw_int_decode(msg, &gps_raw);
      
      // jika 2d atau 3d fixed
      if (gps_raw.fix_type > 1) {
        // jml satelit
        Serial.print(F("Sat: "));
        Serial.println(gps_raw.satellites_visible);
        
        // HDOP
        Serial.print(F("HDOP: "));
        Serial.print(gps_raw.eph);
        Serial.println(F(" cm "));

        // 2d atau 3d fixed
        if (gps_raw.fix_type == 2)
          Serial.println(F("2D"));
        if (gps_raw.fix_type == 3)
        Serial.println(F("3D"));
      } else {
        // tidak dapat sinyal gps
        Serial.println(F("No GPS fix"));
      }
      delay(1000);

      // assign ke uavpos
      _uavpos->lat = gps_raw.lat;
      _uavpos->lon = gps_raw.lon;

      // menuliskan lat dan lon
      Serial.print(F("Lat: "));
      Serial.println(gps_raw.lat);

      Serial.print(F("Lon: "));
      Serial.println(gps_raw.lon);
      delay(1000);

      break;

    default:
      // tidak ada pesan
      break;
  }
}
