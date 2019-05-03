#!/bin/bash -xve

sudo apt-get update
#sudo apt-get -f install ros-kinetic-cv-bridge
#sudo apt-get -f install ros-kinetic-cv-camera
#sudo apt-get -f install ros-kinetic-image-transport-plugins
sudo apt-get -f install libopencv-dev python-opencv

sudo apt-get install ros-indigo-cv-bridge
sudo apt-get install ros-indigo-cv-camera

#rsync and make
rsync -av ./ ~/catkin_ws/src/pimouse_vision_control/

#clone pimouse_ros
cd ~/catkin_ws/src/
git clone https://github.com/hirotaka001/pimouse_ros.git

cd ~/catkin_ws
catkin_make
#sudo apt install opencv-data