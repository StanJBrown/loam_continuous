CMAKE_MINIMUM_REQUIRED(VERSION 2.8.3)
PROJECT(loam_continous)

FIND_PACKAGE(catkin REQUIRED COMPONENTS
  geometry_msgs
  nav_msgs
  pcl_conversions
  pcl_ros
  roscpp
  rospy
  sensor_msgs
  std_msgs
  tf
  laser_geometry
)

FIND_PACKAGE(OpenCV REQUIRED)


catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES loam_multisense
#  CATKIN_DEPENDS geometry_msgs nav_msgs pcl_conversions pcl_ros roscpp rospy sensor_msgs std_msgs tf
#  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
)

ADD_EXECUTABLE(playBag_ms src/playBag.cpp)
ADD_EXECUTABLE(scanRegistration_ms src/scanRegistration.cpp)
ADD_EXECUTABLE(laserOdometry_ms src/laserOdometry.cpp)
ADD_EXECUTABLE(laserMapping_ms src/laserMapping.cpp)
ADD_EXECUTABLE(transformMaintenance_ms src/transformMaintenance.cpp)

TARGET_LINK_LIBRARIES(
    scanRegistration_ms 
    ${catkin_LIBRARIES}
    ${PCL_LIBRARIES}
    ${OpenCV_LIBS}
)
TARGET_LINK_LIBRARIES(
    laserOdometry_ms
    ${catkin_LIBRARIES}
    ${OpenCV_LIBS}
    ${PCL_LIBRARIES}
)

TARGET_LINK_LIBRARIES(laserMapping_ms 
    ${catkin_LIBRARIES}
    ${OpenCV_LIBS}
    ${PCL_LIBRARIES}
)
TARGET_LINK_LIBRARIES(transformMaintenance_ms
    ${catkin_LIBRARIES} 
    ${PCL_LIBRARIES}
)
TARGET_LINK_LIBRARIES(playBag_ms ${catkin_LIBRARIES})
