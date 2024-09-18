#!/bin/bash
clear && clear && clear && clear && clear && clear

cd "$(dirname "$(realpath "$0")")/../../../" || exit  # $0 等效于 ${BASH_SOURCE}, ${BASH_SOURCE[0]}
root_run_dir=$(pwd)
echo "cur running dir is: \033[2;3;37m" "$root_run_dir\033[0m"
echo "-------------------------------------------------------------------------"

# venv的使用，见onenote: venv的使用


# nx, 列个数; ny, 行个数；tsize, 二维码方格长度，单位m; tspace,  小方格与二维码方格长度比例， 大方格长度/黑色小块长度。
#rosrun kalibr kalibr_create_target_pdf --type apriltag --nx 6 --ny 6 --tsize 0.055 --tspace 0.3
#如果需要打印在A4纸上，可以这样弄：
# aprilgrid
rosrun kalibr kalibr_create_target_pdf --type apriltag --nx 6 --ny 6 --tsize 0.022 --tspace 0.3 target_apriltag_start_id_0.pdf
#rosrun kalibr kalibr_create_target_pdf --type apriltag --nx 6 --ny 6 --tsize 0.02 --tspace 0.3 --tfam t36h9 target_apriltag_2.pdf
rosrun kalibr kalibr_create_target_pdf --type apriltag --nx 6 --ny 6 --tsize 0.022 --tspace 0.3 --idx 36 target_apriltag_2_start_id_36.pdf

# checkerboard
#rosrun kalibr kalibr_create_target_pdf --type checkerboard --nx 7 --ny 6 --csx 0.04 --csy 0.04 target_checkerboard.pdf