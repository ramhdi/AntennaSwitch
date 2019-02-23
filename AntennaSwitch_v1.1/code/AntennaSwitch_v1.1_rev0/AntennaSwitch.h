#ifndef _antennaswich_
#define _antennaswich_
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
void handle_message(mavlink_message_t *msg, mavlink_status_t *status, MAVCoordinate_t* _uavpos, MAVCoordinate_t* _trackerpos);
bool controlSwitch(MAVHeading_t th);

#endif