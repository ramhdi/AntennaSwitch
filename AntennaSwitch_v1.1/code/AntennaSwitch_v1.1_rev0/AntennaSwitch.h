#ifndef _antennaswitch_
#define _antennaswitch_

#include "mavlink/common/mavlink.h"
#include <cmath>

// mendefinisikan pin serial stm32 yg terhubung ke pixhawk
#define MAVSerial Serial3

typedef struct _coordinate
{
  float lat, lon;
} MAVCoordinate_t;

typedef int MAVHeading_t;

MAVHeading_t TrackerHeading(MAVCoordinate_t mavpos, MAVCoordinate_t trackerpos, MAVHeading_t mavheading);
void handle_message(mavlink_message_t *msg, mavlink_status_t *status, MAVCoordinate_t* _uavpos, MAVCoordinate_t* _trackerpos, MAVHeading_t* _mavheading);
void SendHeartBeat();
void RequestHomePos();
bool ControlSwitch(MAVHeading_t th);

//Identitas sistem/firmwware ini:
uint8_t system_id = 2;    // bukan GCS (255) atau Pixhawk (1)
uint8_t system_component_id = 0;
uint8_t system_type = MAV_TYPE_ONBOARD_CONTROLLER;  //jenis sistemnya (ini ngahandle wahana cem apa/jobdesc umum)
uint8_t system_autopilot = MAV_AUTOPILOT_GENERIC;   //jenis hardwarenya (ini pakai pixhawk kah, raspi kah, etc)
uint8_t system_base_mode = 0;   //ini bitmask tentang mode kerja jadi sistem ini, misal "udah armed, lagi auto (bukan auto flight mode, tapi auto dalam sense "ini sedang ekseskusi misi secara otomatis"), dan sedang hil"
uint32_t system_custom_mode = 1; //ini basically flight mode dari sistem ini,, sistem kita ini gapunya flight mode, wkwwk (ini bisa dipake buat nyari tau flgiht mode wahana, tinggal crosscheck sama tabel mode yg ada)
uint8_t system_system_status = 0;   //status sistem ini, ini sebenernya guna, tapi docs mavlinknnya ga lengkap, ya 0-in aja

//Identitas autopilot (target):
uint8_t ap_id = 1;  //ini defaultnya ardupilot
uint8_t ap_component_id = 0;

#endif