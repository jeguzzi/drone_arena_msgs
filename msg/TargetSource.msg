uint8 Teleop = 1
uint8 Cmd = 2
uint8 Pos = 3
uint8 Vel = 4
uint8 BodyVel = 5
uint8 Odom = 6

uint8 mode # Optionally one of the above. If different (e.g., 0), it will be automatically inferred from the topic type

string topic
