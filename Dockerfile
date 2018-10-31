FROM ros:melodic

RUN apt-get update && apt-get install -y \
    ros-melodic-mavros \
    && rm -rf /var/lib/apt/lists/
