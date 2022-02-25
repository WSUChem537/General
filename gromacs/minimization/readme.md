Steps - 

1) when making the packmole configuration - save as pdb file
2) move the pdb file onto kamiak
3) load the gmx module:
  module load intel/xe_2016_update3 
  module load gromacs/16.2_mpi
5) gmx_mpi_d editconf -f Ar.pdb -o start.gro  !this is will run gmx tools to create the gro file, called start.gro
6) gmx_mpi_d -f minim.mdp -c start.gro -p topol.top -o minim -maxwarn 5  !command to combine all of files into a tpr file that is machine-language file (not human readable) that is the input file for gromacs
