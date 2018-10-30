cmake_minimum_required(VERSION 2.8.3)
project(drone_arena_msgs)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  std_msgs
  message_generation
  geometry_msgs
  actionlib_msgs
)

## Generate messages in the 'msg' folder
add_message_files(
  FILES
  TargetSource.msg
  State.msg
  BlinkMScript.msg
)

# Generate actions in the 'action' folder
add_action_files(
  FILES
  GoToPose.action
)

add_service_files(
  FILES
  SetXY.srv
)

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
  geometry_msgs
  std_msgs
  actionlib_msgs
)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs actionlib_msgs geometry_msgs
)
