#!/bin/bash
#SBATCH --job-name=job_B
#SBATCH --output=ex4_B_output.txt
#SBATCH --dependency=afterok:5844374




python ex4.py

