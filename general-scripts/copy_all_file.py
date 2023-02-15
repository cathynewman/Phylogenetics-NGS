#!/usr/bin/env python

InFileName='Galaxy.example.fastq'
InFile=open(InFileName, 'r')

OutFileName='CopyOfGalaxyExample.fastq'
OutFile=open(OutFileName, 'w')

for line in InFile:
	OutFile.write(line)

InFile.close()
OutFile.close()