#!/bin/bash
clear && clear && clear && clear && clear && clear

cd "$(dirname "$(realpath "$0")")/../../../" || exit  # $0 等效于 ${BASH_SOURCE}, ${BASH_SOURCE[0]}
root_run_dir=$(pwd)
echo "cur running dir is: \033[2;3;37m" "$root_run_dir\033[0m"
echo "-------------------------------------------------------------------------"

export ROS_VERSION=melodic
export CATKIN_WS=$root_run_dir
cd $CATKIN_WS
catkin init -w $root_run_dir
catkin build -DCMAKE_BUILD_TYPE=Release -j4
