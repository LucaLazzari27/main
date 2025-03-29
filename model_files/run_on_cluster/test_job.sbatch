#!/bin/sh

#SBATCH --partition=compute
#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=64G
#SBATCH --mail-type=END
#SBATCH --account=Education-TPM-MSc-CoSEM

calliope run ../model.yaml


