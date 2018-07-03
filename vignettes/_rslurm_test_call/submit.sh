#!/bin/bash
#
#SBATCH --ntasks=1
#SBATCH --job-name=test_call
#SBATCH --output=slurm_0.out
/usr/lib/R/bin/Rscript --vanilla '/home/vegayon/Documents/rslurm/vignettes/_rslurm_test_call/slurm_run.R'
