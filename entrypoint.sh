. /opt/ros/noetic/setup.sh
roslaunch mavros apm.launch fcu_url:=udp://0.0.0.0@10.1.1.10:14560 gcu_url:=udp://@localhost fcu_protocol:=v1.0
