#!/bin/bash
#BSUB -J profile
#BSUB -o profile_out.txt
#BSUB -e profile_err.txt
#BSUB -n 1
#BSUB -q hpc
#BSUB -W 10

source /dtu/projects/02613_2025/conda/conda_init.sh
conda activate 02613

kernprof -l -v simulate_profile.py 5 > profiling_output.txt
