#!/bin/bash
pathDataset="/home/fenghua/dataset_slam/dataset-outdoors4_512_16"
pathRoot="/home/fenghua/code_work/dm-vio"
#configs
files="$pathDataset/dso/cam0/images"
vignette="$pathDataset/dso/cam0/vignette.png"
imuFile="$pathDataset/dso/imu.txt"
gtFile="$pathDataset/dso/gt_imu.csv"
calib="$pathRoot/configs/tumvi_calib/camera02.txt"
gamma="$pathRoot/configs/tumvi_calib/pcalib.txt"
imuCalib="$pathRoot/configs/tumvi_calib/camchain.yaml"
mode=0
use16Bit=1
preset=0                                                        # use 1 for realtime
nogui=0                                                         # use 1 to enable GUI
resultsPrefix="$pathRoot/results/"
settingsFile="$pathRoot/configs/tumvi.yaml"
start=2

#------------------------------------
# dm-vio Mono-Inertial Examples
echo "Launching camera with Mono-Inertial sensor"
./build/bin/dmvio_dataset files="$files" vignette="$vignette" imuFile="$imuFile" gtFile="$gtFile" calib="$calib" gamma="$gamma" imuCalib="$imuCalib" mode="$mode" use16Bit="$use16Bit" preset="$preset" nogui="$nogui" resultsPrefix="$resultsPrefix" settingsFile="$settingsFile" start="$start"
