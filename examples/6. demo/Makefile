all:
	ca65 resources.s 
	ca65 raster.s
	cl65 resources.o raster.o main.c -o demo.prg -m map.txt 
