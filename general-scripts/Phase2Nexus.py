#!/usr/bin/python
import string
import re
import sys

#definition of the files
filephaseout=sys.argv[1]
fileout=sys.argv[2]

if len(sys.argv)>3:
	#if 3 arguments are given, the 3rd is the name of the outfile containing the table of haplotype used for each sequences
	fileout2=sys.argv[3]
else:
	fileout2=''

#Open the phase output
file=open(filephaseout)
lines_out=file.readlines()
file.close()
print "File read: "+filephaseout

#Get into a structure (dataout) all the different field. Each field begin in phase with BEGIN FIELD_NAME
dataout={}
block=0
cat=''
for line in lines_out:
	header=0
	if line[:5]=='BEGIN':
		block=1
		tmp=string.split(line,' ')
		cat=tmp[1][:-1]
		dataout[cat]=[]
		header=1
	if line[:3]=='END':
		block=0
		cat=''
		header=1
	if (block==1) & (header==0):
		dataout[cat].append(line[:-1])

#In a structure, the information inside the BESTPAIRS_SUMMARY field are put in a table format
#into new field BESTPAIRS. 
dataout['BESTPAIRS']={}
for pair in dataout['BESTPAIRS_SUMMARY']:
	tmp=string.split(pair,' ')
	name=tmp[0][:-1]
	tmp2=string.split(tmp[1],',')
	dataout['BESTPAIRS'][name]=[int(tmp2[0][1:]), int(tmp2[1][:-1])]

#In a structure, the haplotype sequences inside the LIST_SUMMARY field are put into new field LIST. 
#During this step, all the microsatellite site are transformed from the numbered notation into the nucleotide notation
dataout['LIST']={}
for li in dataout['LIST_SUMMARY']:
	tmp=re.split(' +',li)
	seq=''
	num=int(tmp[1])
	for i in tmp[2:-1]:
		seq=seq+i
	seq=seq.replace('1','A')
	seq=seq.replace('2','C')
	seq=seq.replace('3','T')
	seq=seq.replace('4','G')
	seq=seq.replace('5','-')
	seq=seq.replace('-1','?')
	seq=seq.replace('B','?')
	seq=seq.replace('D','?')
	seq=seq.replace('H','?')
	seq=seq.replace('U','?')	
	dataout['LIST'][num]=seq

#Number of sequences to output
lseq=len(seq)

#Look for the maximum length in the name of the sequences
lname=0
for pair in dataout['BESTPAIRS']:
	if len(pair)>lname:
		lname=len(pair)

#Write the nexus output
file=open(fileout,'w')

#Write Header
file.write('#NEXUS\n\n\n')
out='BEGIN DATA;\n\tDIMENSIONS  NTAX='+str(2*len(dataout['BESTPAIRS']))
out=out+' NCHAR='+str(lseq)+';\n'
out=out+'\tFORMAT DATATYPE=DNA  MISSING=? GAP=- ;\n'
file.write(out)

#Write Data
file.write('MATRIX\n')
for pair in dataout['BESTPAIRS']:
	#For the two haplotypes, the extension ".a" and ".b" is added
	name1=pair+'.a'
	name2=pair+'.b'
	#Normalize the length of the name
	if len(pair)<lname:
		for i in range(lname-len(pair)):
			name1=name1+' '
			name2=name2+' '
	#Write the two haplotypes for each sequence
	file.write(name1+' '+dataout['LIST'][dataout['BESTPAIRS'][pair][0]]+'\n')
	file.write(name2+' '+dataout['LIST'][dataout['BESTPAIRS'][pair][1]]+'\n')

file.write(';\nEND;\n')

#Close the nexus file
print "Output done: "+fileout
file.close()

#If a table output is asked
if fileout2!='':
	file=open(fileout2,'w')
	file.write('Name\tSeq1\tSeq2\n')
	for pair in dataout['BESTPAIRS']:
		file.write(pair + '\t' + str(dataout['BESTPAIRS'][pair][0]) + '\t' + str(dataout['BESTPAIRS'][pair][1]) + '\n')
	#Closed the table output
	file.close()
	print "Output table done: "+fileout2

