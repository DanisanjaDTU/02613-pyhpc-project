#!/bin/bash
#BSUB -J parallel_dynamic
#BSUB -o output_dynamic.txt
#BSUB -e error_dynamic.txt
#BSUB -q hpc
#BSUB -n 4
#BSUB -R "span[hosts=1]"
#BSUB -W 20

source /dtu/projects/02613_2025/conda/conda_init.sh
conda activate 02613

python simulate_parallel_dynamic.py 100 > results_dynamic.csv
