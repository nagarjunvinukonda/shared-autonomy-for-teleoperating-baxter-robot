############################ ROS ############################ 
FROM ros:melodic-ros-core-bionic

RUN sudo apt-get upgrade

# install ros packages
RUN sudo apt-get update && sudo apt-get install -y \
    ros-melodic-ros-base=1.4.1-0* \
    && rm -rf /var/lib/apt/lists/*

###################### Kinect Driver ########################
# https://github.com/OpenKinect/libfreenect2/blob/master/README.md#linux
RUN git clone https://github.com/OpenKinect/libfreenect2.git && cd libfreenect2
RUN sudo apt-get install build-essential cmake pkg-config
# RUN sudo apt-get install libusb-1.0-0-dev
# RUN sudo apt-get install libturbojpeg0-dev
RUN sudo apt-get install libglfw3-dev
RUN mkdir build && cd build
RUN cmake .. -DCMAKE_INSTALL_PREFIX=$HOME/freenect2
RUN make
RUN make install
RUN sudo cp ../platform/linux/udev/90-kinect2.rules /etc/udev/rules.d/



###################### Code ##########################
# COPY src/ ~/