#!/bin/bash
#
#SBATCH --array=0-1
#SBATCH --job-name=test_apply
#SBATCH --output=slurm_%a.out
/usr/lib/R/bin/Rscript --vanilla '/home/vegayon/Documents/rslurm/vignettes/_rslurm_test_apply/slurm_run.R'
