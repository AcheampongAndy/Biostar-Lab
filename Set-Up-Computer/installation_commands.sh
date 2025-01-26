#!/bin/bash
# Biostar-Lab Installation Script

# Initialization of terminal
curl http://data.biostarhandbook.com/install/bash_profile.txt >> ~/.bash_profile
curl http://data.biostarhandbook.com/install/bashrc.txt >> ~/.bashrc

# Apply the script
source ~/.bash_profile

# Install Miniconda (or Conda)
curl -OL https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh

# Check conda version
conda --version

# Update the conda package
conda update -y -n base conda
