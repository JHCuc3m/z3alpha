#!/bin/bash

#SBATCH --time=3:00:00                 # Runtime in HH:MM:SS
#SBATCH --nodes=1                       # Number of nodes
#SBATCH --ntasks=1                      # Number of tasks
#SBATCH --cpus-per-task=16              # Number of CPU cores per task
#SBATCH --mem=32G                       # Memory pool for all cores
#SBATCH --account=def-vganesh
#SBATCH --qos=normal
#SBATCH --output=JHC/experiments/slurm-%j.out       # Redirect stdout to JHC/slurm-<jobid>.out
#SBATCH --error=JHC/experiments/slurm-%j.err        # Redirect stderr to JHC/slurm-<jobid>.err

# Print some information about the job
echo "Job ID: $SLURM_JOB_ID"
echo "Node: $SLURM_JOB_NODELIST"
echo "Start time: $(date)"

# Run script

python JHC/run_MachZ3alpha.py --config JHC/config/MachZ3alpha/sample_config.json

echo "End time: $(date)"