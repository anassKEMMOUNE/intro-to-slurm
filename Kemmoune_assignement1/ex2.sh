#!/bin/bash
#SBATCH --job-name=exercice2           # Job name
#SBATCH --output=ex2_out.txt         # Output file
#SBATCH --cpus-per-task=4           # Number of CPU cores per task
#SBATCH --mem=4G                   # Memory request per node

# Your job commands here

echo "Hello " > ex2_out.txt
