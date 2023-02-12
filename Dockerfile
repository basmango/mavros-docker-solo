FROM ros:noetic-ros-core

RUN apt-get update && apt-get install -y \
    ros-noetic-mavros \
    && rm -rf /var/lib/apt/lists/

RUN wget https://raw.githubusercontent.com/mavlink/mavros/master/mavros/scripts/install_geographiclib_datasets.sh
RUN chmod a+x install_geographiclib_datasets.sh
RUN ./install_geographiclib_datasets.sh


COPY launch /

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh 
