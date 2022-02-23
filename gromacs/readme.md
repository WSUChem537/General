this directory has the files needed associated with Gromacs. For more information on the gromacs documentation see:

https://www.gromacs.org/Documentation

and 

https://manual.gromacs.org/documentation/


Gromacs requires the following files:

1) a file with the xyz coordinates - this could be a .gro file or a .pdb file
2) a file that specifies the force field this ends in .top
3) a file that defines the "topology" of the system, this means the definitions of different atom types that are found in the force field, this is the .itp file
4) a file that tells gromacs what you want to do, it has the specifics of the type of simulation, integrator, etc. This is the .mdp file
