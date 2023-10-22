#!/bin/bash

# Author: Anass Kemmoune

# Exercise 3

#SBATCH --job-name=array_job
#SBATCH --output=ex3_output.txt
#SBATCH --array=1-10%2
process_line() {
  local task_id=$1
  local sample_name=$2
  local sex=$3
  echo "This is array task $task_id, the sample name is $sample_name and the sex is $sex."
}


max_tasks=2


> ex3_output.txt


while read -r task_id sample_name sex; do
  process_line "$task_id" "$sample_name" "$sex" >> ex3_output.txt &
  ((max_tasks--))
  if [ $max_tasks -le 0 ]; then
    wait  
    max_tasks=2  
  fi
done < config.txt


wait

