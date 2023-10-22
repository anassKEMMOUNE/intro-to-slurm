#!/bin/bash

#SBATCH --job-name=ex4a
#SBATCH --output=ex4_A_output.txt


python ex4.py
sleep 30
