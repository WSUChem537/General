here are the commands and procedure:

load the gmx module: module load intel/xe_2016_update3 module load gromacs/16.2_mpi

for NPT simulation from command line prompt:

gmx_mpi_d grompp -f npt_500ps_87K.mdp -c minim.gro -p topol.top -o npt_equil -maxwarn 3  !creates your new tpr file for the equilibration, this should create a npt_equil.tpr

Then in the submission script, change the name of the tpr used to npt_equil so that the srun command looks like:

srun --ntasks=20 --mpi=pmi2 gmx_mpi_d mdrun -deffnm npt_equil > output.$JOBID

The output files that are made include:

name.trr contains the forces on the particles  !machine readable
name.xtc contains the coordinates  !machine readable
name.edr which contains energies, densities, temperature, PE, etc. !machine readable
name.log file  !human readable

A tutorial for the gmx command line tools to analyze the edr file can be found at: https://manual.gromacs.org/5.1.1/user-guide/cmdline.html

for the gmx tools for the .edr file the command is: gmx energy -f npt_equil.edr -o density


