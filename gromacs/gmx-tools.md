Here are some good commands for gmx tools to examine if your system is equilibrated:

Plotting: on your laptop you can use your jupyternotebook, or xmgrace. On kamiak you can also use gnuplot.

1) gmx energy -f npt_87K.edr -o density  !this will analyze the energy.edr file and produce a file called density.xvg. When you activate gmx tools you will type 16 to get the density value. You will get a density vs. time 2 column format in the densty.xvg
2) gmx energy -f nvt_87K.edr -o temp  !here the option for gmx is 8 and you will create an output file called temp.xvg. 
3) gmx exnergy -r nvt_87K.edr -o potential !her ethe option is 1 in gmx tools
