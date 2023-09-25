#!/bin/bash

cd /content/RandLA-Net/

conda create --name myenv python=3.6
conda init
source activate myenv && pip install numpy==1.16.1
source activate myenv && pip install h5py==2.10.0
source activate myenv && pip install cython==0.29.15
source activate myenv && pip install open3d-python==0.3.0
source activate myenv && pip install pandas==0.25.3
source activate myenv && pip install scikit-learn==0.21.3
source activate myenv && pip install scipy==1.4.1
source activate myenv && pip install PyYAML==5.4
source activate myenv && pip install tensorflow==1.11.0
source activate myenv && pip install tensorflow-gpu==1.11.0
source activate myenv && pip install nearest-neighbors==0.1.0
source activate myenv && wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda-repo-ubuntu1704-7-0-local_9.0.176-1_amd64-deb
source activate myenv && dpkg -i cuda-repo-ubuntu1704-9-0-local_9.0.176-1_amd64-deb
source activate myenv && apt-key add /var/cuda-repo-9-0-local/7fa2af80.pub
source activate myenv && apt-get update
source activate myenv && sudo apt-get install cuda-9.0
source activate myenv && pip install tensorflow==1.14
source activate myenv && pip install tensorflow-gpu==1.14
source activate myenv && chmod +x compile_op.sh
source activate myenv && sh compile_op.sh
