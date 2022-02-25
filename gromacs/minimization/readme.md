Steps - 

1) when making the packmole configuration - save as pdb file
2) move the pdb file onto kamiak
3) load the gmx module: 
  module load gromacs/16.2_mpi
  module load intel/xe_2016_update3
5) gmx_mpi_d editconf -f Ar.pdb -o start.gro  !this is will run gmx tools to create the gro file
