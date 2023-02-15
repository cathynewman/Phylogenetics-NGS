#Installing Miniconda & Phyluce on WSL in Ubuntu

#In WSL UBUNTU:
wget https://repo.anaconda.com/miniconda/Miniconda2-latest-Linux-x86_64.sh

#Give permission to execute
chmod +x Miniconda2-latest-Linux-x86_64.sh (or whatever your filename is)

#Execute install file
./Miniconda2-latest-Linux-x86_64.sh (or whatever your filename is)

#spacebar to page through license agreement; "yes" to agreement; ENTER when it asks where to install

#YES to initialize

#Install Phyluce (might take a while on some steps)
wget https://raw.githubusercontent.com/faircloth-lab/phyluce/v1.7.1/distrib/phyluce-1.7.1-py36-Linux-conda.yml
conda env create -n phyluce-1.7.1 --file phyluce-1.7.1-py36-Linux-conda.yml
conda activate phyluce-1.7.1
