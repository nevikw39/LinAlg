#!/bin/bash
#SBATCH -A GOV111082
#SBATCH -J LinAlg_A1
#SBATCH -p ct56
#SBATCH -c 56
#SBATCH -o %j.out
#SBATCH -e %j.err

ml pkg/Anaconda3
# conda init
conda activate linalg

python A1_110062219.py

