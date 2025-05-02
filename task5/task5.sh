#!/bin/bash
#BSUB -J parallel_static
#BSUB -o output_static_1_1.txt
#BSUB -e error_static.txt
#BSUB -q hpc
#BSUB -n 1  
#BSUB -R "span[hosts=1]"
#BSUB -W 35

source /dtu/projects/02613_2025/conda/conda_init.sh
conda activate 02613

python simulate_parallel_static.py 100 > results_static.csv
