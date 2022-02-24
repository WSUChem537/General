#!/bin/bash

sed -e '1,2d'  Arbox-new.xyz > test.xyz

for n in {1..100}
do
    sed -i $n's/Ar/'$n'	1	/' test.xyz 
done 
