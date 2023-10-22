#!/bin/bash



#SBATCH --job-name=ex10
#SBATCH --output=ex10_output.txt

sinfo --format="%N %t %C %m" | awk '$2 == "idle" {print}'