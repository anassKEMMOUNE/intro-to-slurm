#!/bin/bash
#SBATCH --job-name=my_job
#SBATCH --output=my_job_output.txt

echo "Hello, SLURM!" > ex1_out.txt
