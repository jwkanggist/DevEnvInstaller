#! /bin/bash
# Nvidia driver installation check
nvidia-smi
 
# cuda 8.0  Installation
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run
sh cuda_8.0.61_375.26_linux-run
 
# Register env variables for CuDA
echo -e "\n## CUDA and cuDNN paths"  >> ~/.bashrc
echo 'export PATH=/usr/local/cuda-8.0/bin:${PATH}' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64:${LD_LIBRARY_PATH}' >> ~/.bashrc
 
# CUDA installation check
$ source ~/.bashrc

# CuDNN v.6.0 Installation
# Nvidia site에서 수동으로 download
 
sudo cp cuda/lib64/* /usr/local/cuda-8.0/lib64/
sudo cp cuda/include/* /usr/local/cuda-8.0/include/
sudo chmod a+r /usr/local/cuda-8.0/lib64/libcudnn*
sudo chmod a+r /usr/local/cuda-8.0/include/cudnn.h
 
# CuDNN installation check
nvcc --version
cat /proc/driver/nvidia/version
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2 

