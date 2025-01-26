#!/bin/bash
# Biostar-Lab Installation Script

# Create a bioinformatics enviroment called BiostarLab
conda create -y --name BiostarLab python=3.6

# Activate the bioinformatics enviroment.
conda activate BiostarLab

# Install most bioinformatics tools covered in the Biostar Handbook.
curl http://data.biostarhandbook.com/install/conda.txt | xargs conda install -y

# Check if Entrez Direct works
efetch -db nuccore -id 2 -format gb

# List all existing environments
conda info --envs

# Install a new tool
conda install toolname

# Upgrade a tool
conda update toolname
