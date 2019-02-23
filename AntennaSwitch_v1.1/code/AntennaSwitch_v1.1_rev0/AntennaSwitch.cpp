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
bool ControlSwitch(MAVHeading_t th)
{
  if (th > 0 && th <= 180) return 0;
  else return 1;
}

// void handle_message(mavlink_message_t, mavlink_status_t)
// method untuk menghandle message dari pixhawk
void handle_message(mavlink_message_t *msg, mavlink_status_t *status, MAVCoordinate_t* _uavpos, MAVCoordinate_t* _trackerpos, MAVHeading_t* _mavheading)
{
  // switch kondisi dari message id
  switch (msg->msgid)
  {
    // msgid = posisi gps raw/mentah
    case MAVLINK_MSG_ID_GLOBAL_POSITION_INT:
        // decode isi msg menjadi isi data gps
        mavlink_global_position_int_t filtered_uav_pos;
        mavlink_msg_gps_raw_int_decode(msg, &filtered_uav_pos);
        
        // assign ke uavpos
        _uavpos->lat = filtered_uav_pos.lat;
        _uavpos->lon = filtered_uav_pos.lon;
        *_mavheading = filtered_uav_pos.hdg;

        // menuliskan lat dan lon
        Serial.print(F("UAV Lat: "));
        Serial.println(filtered_uav_pos.lat);

        Serial.print(F("UAV Lon: "));
        Serial.println(filtered_uav_pos.lon);

        Serial.print(F("UAV Hdg: "));
        Serial.println(filtered_uav_pos.hdg);
        delay(1000);

        break;
    
    case MAVLINK_MSG_ID_HOME_POSITION:
        // decode isi msg menjadi isi data gps
        mavlink_home_position_t home_pos;
        mavlink_msg_home_position_decode(msg, &home_pos);

        _trackerpos->lat = home_pos.latitude;
        _trackerpos->lon = home_pos.longitude;

        Serial.print(F("Home Lat: "));
        Serial.println(home_pos.latitude);
        
        Serial.print(F("Home Lon: "));
        Serial.println(home_pos.longitude);
        delay(1000);

        break;

    default:
        // tidak ada pesan
        break;
  }
}

void RequestHomePos() {
    mavlink_message_t msg; 
    uint8_t buf[MAVLINK_MAX_PACKET_LEN];
    
    //pack messagenya, masukin ke buffer, lalu tulis:
    mavlink_msg_command_long_pack(
        system_id,          //system id
        system_component_id,//componen id
        &msg,               //message container
        ap_id,              //target_system
        ap_component_id,    //target_component
        MAV_CMD_GET_HOME_POSITION,   //command   //command ID nya, ref: MAV_CMD
        0,  //confirmation
        0,  //param1
        0,  //param2
        0,  //param3
        0,  //param4
        0,  //param5
        0,  //param6
        0   //param7
    );
    uint16_t len = mavlink_msg_to_send_buffer(buf, &msg);
    MAVSerial.write(buf, len);
}

void SendHeartbeat() {
    mavlink_message_t msg; 
    uint8_t buf[MAVLINK_MAX_PACKET_LEN];

    //pack messagenya, masukin ke buffer, lalu tulis:
    mavlink_msg_heartbeat_pack(
        system_id,              //system id
        system_component_id,           //component id
        &msg,                   //message container
        system_type,            //type
        system_autopilot,       //autopilot
        system_base_mode,       //base_mode
        system_custom_mode,     //custom_mode
        system_system_status    //system_status
    );
    uint16_t len = mavlink_msg_to_send_buffer(buf, &msg);    
    MAVSerial.write(buf, len);
}
