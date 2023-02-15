#!/usr/bin/env python

InFileName='Galaxy.example.fastq'
InFile=open(InFileName, 'r')

OutFileName='CopyOfSequences.fastq'
OutFile=open(OutFileName, 'w')

for line in InFile:
	LineList=list(line)
	if LineList[0]=='A':
		OutFile.write(line)
	elif LineList[0]=='C':
		OutFile.write(line)
	elif LineList[0]=='T':
		OutFile.write(line)
	elif LineList[0]=='G':
		OutFile.write(line)

InFile.close()
OutFile.close()