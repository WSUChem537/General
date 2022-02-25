#!/bin/bash

sed -e '1,2d'  Arbox-new.xyz > test.xyz #deletes first two lines and moves the new file into a test.xyz file

for n in {1..100}  #looping over the total number atoms/lines to do a replacement of the Ar (for argon box) into the ID number and the Group ID
do
    sed -i $n's/Ar/'$n'	1	/' test.xyz 
done 
