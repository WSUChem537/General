#!/bin/bash
#SBATCH -J name-of-job
#SBATCH --nodes=4
#SBATCH --ntasks-per-node=16
#SBATCH --threads-per-core=1
#SBATCH --time=08:00:00

module purge
module load intel/xe_2016_update2
module load lammps

prefix="$SLURM_JOB_NAME"
srun -n $SLURM_NTASKS lmp -i $prefix.in -echo screen -log none >> $prefix.out

