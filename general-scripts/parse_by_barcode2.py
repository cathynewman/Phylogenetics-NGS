#!/usr/bin/env python

InFileName="Galaxy.example.fastq"

InFile=open(InFileName, 'r')

BarcodeList=['ATCACGT','CGATGTT','TTAGGCT','TGACCAT','ACAGTGT','GCCAATT','CAGATCT','ACTTGAT']

BarcodeNumber=0

for Barcode in BarcodeList:
	BarcodeNumber+=1
	OutFileName='Galaxy.example_n5' + str(BarcodeNumber)
	OutFile=open(OutFileName, 'w')

	for Line in InFile:
		if Barcode in Line[:7]:
			OutFile.write(Line)
	OutFile.close()

OutFileName='Galaxy.example_Ns'
OutFile=open(OutFileName, 'w')
for Line in InFile:
	if 'N' in Line[:7]:
		OutFile.write(Line)

InFile.close()
OutFile.close()