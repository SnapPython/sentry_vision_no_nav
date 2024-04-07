#! /bin/bash

colcon build --symlink-install 
cmds=(
	"ros2 launch rm_vision_bringup vision_bringup.launch.py"
	"ros2 launch foxglove_bridge foxglove_bridge_launch.xml")

for cmd in "${cmds[@]}";
do
	echo Current CMD : "$cmd"
	gnome-terminal -- bash -ic "source ~/.bashrc;cd $(pwd);source install/setup.bash;$cmd;"
	sleep 0.2
done
