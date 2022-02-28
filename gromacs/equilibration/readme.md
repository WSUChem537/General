here are the commands and procedure:

for NPT simulation from command line prompt:

gmx_mpi_d grompp -f npt_500ps_87K.mdp -c minim.gro -p topol.top -o npt_equil -maxwarn 3  !creates your new tpr file for the equilibration, this should create a npt_equil.tpr

Then in the submission script


