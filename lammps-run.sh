#!/bin/bash -x
#SBATCH -p kamiak,clark,cas
#SBATCH --job-name="C5.6meqlm"
#SBATCH --nodes=1
#SBATCH --ntasks=20
#SBATCH --ntasks-per-node=20
#SBATCH --export=ALL
#SBATCH --time=5:00:00

module load intel/xe_2016_update3
module load gromacs/2016.2_mpi

JOBID=`echo $SLURM_JOBID`

printenv > env.$JOBID

#srun --ntasks=1 --nodes=1 --mpi=pmi2 gmx_mpi_d grompp -f minim.mdp -c conf.gro -p topol.top -maxwarn 3 -o minim >& minim_1.$JOBID

#srun --ntasks=20 --mpi=pmi2 gmx_mpi_d mdrun -s minim.tpr -deffnm minim >& minim_2.$JOBID

srun --ntasks=1 --nodes=1 --mpi=pmi2 gmx_mpi_d grompp -f nvteqlm.mdp -c prenpt.gro -p topol.top -o nvteqlm -maxwarn 3 >& output_nvteqlm_1.$JOBID

srun --ntasks=20 --mpi=pmi2 gmx_mpi_d mdrun -s nvteqlm.tpr -deffnm nvteqlm >& output_nvteqlm_2.$JOBID

#srun --ntasks=20 --mpi=pmi2 gmx_mpi_d mdrun -s NPT_EQU.tpr -cpi NPT_EQU.cpt -deffnm NPT_EQU -append >& output_npt.$JOBID

#srun --ntasks=1 --nodes=1 --mpi=pmi2 gmx_mpi_d grompp -f nvt_production.mdp -c nvt_production00.gro -p topol1.top -o nvt_production.tpr -maxwarn 3 >& nvt_run.$JOBID

#srun --ntasks=20 --mpi=pmi2 gmx_mpi_d mdrun -s nvt_production.tpr -deffnm nvt_production >& output_nvt.$JOBID

#srun --ntasks=20 --mpi=pmi2 gmx_mpi_d mdrun -s nvt_production.tpr -cpi nvt_production.cpt -deffnm nvt_production -append
