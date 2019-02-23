#include "mavlink/common/mavlink.h"
#include "AntennaSwitch.h"
#include <math.h>

// pin control switch
int ctrl = PA8;

// variabel- variabel heading dan posisi
// mavheading: heading UAV, trackerheading: heading tracker relatif terhadap UAV
// mavpos: koordinat UAV, trackerpos: koordinat home
// (bukan koordinat asli tracker,tapi cukup dekat untuk jarak yang sangat jauh dari uav)
MAVHeading_t mavheading, trackerheading;
MAVCoordinate_t mavpos, trackerpos;

// pewaktuan rutinitas send HB dan req home pos
uint32_t lastSendHeartBeat = 0;
uint32_t lastRequestHomePos = 0;

#define FREQ_SEND_HEARTBEAT 1
#define FREQ_REQ_HOMEPOS 10

void setup()
{
  pinMode(ctrl, OUTPUT);
  Serial.begin(57600);
  MAVSerial.begin(57600);
}

void loop()
{
  uint32_t time_now_m = millis();

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
      handle_message(&msg, &status, &mavpos, &trackerpos);
    }
  }

  trackerheading = TrackerHeading(mavpos, trackerpos, mavheading);
  digitalWrite(ctrl, ControlSwitch(trackerheading));

  time_now_m = millis();

  // rutinitas kirim HB
  if (time_now_m - lastSendHeartBeat >= 1000 / FREQ_SEND_HEARTBEAT) {
      lastSendHeartBeat = time_now_m;
      SendHeartBeat();
  }

  // rutinitas minta home pos
  time_now_m = millis();
  if (time_now_m - lastRequestHomePos >= 1000 / FREQ_REQ_HOMEPOS) {
      lastRequestHomePos = time_now_m;
      RequestHomePos();
  }
}
