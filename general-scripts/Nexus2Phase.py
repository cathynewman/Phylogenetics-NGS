#!/usr/bin/python
import os
import string
import re
import random
import sys

#definition of the files
filein=sys.argv[1]
fileout=sys.argv[2]

#open the infile
file=open(filein)
lines=file.readlines()
file.close()
print "Input file read: "+filein

#get the lines containing sequence data
beg=-1
end=-1
newlines=[]
for i in range(len(lines)):
	if re.match('^(\t| )*(matrix|Matrix|MATRIX)',lines[i]):
		beg=i+1
	else:
		if ((beg!=(-1)) & (lines[i][-2:]==';\n')) & (end==(-1)):
			end=i
		if (beg!=(-1)) & (end==(-1)):
			if (lines[i][0]!='[') & (len(lines[i])>1):
				newlines.append(lines[i])

#number of sequences
nseq=len(newlines)

#a structure is defined with two field: name of sequences and the corresponding DNA sequences
data={}
data['name']=[]
data['seq']=[]
for line in newlines:
	tmp=re.split(' +',line)
	data['name'].append(tmp[0])
	if len(tmp)==2:
		data['seq'].append(tmp[1][:-1])
	else:
		data['seq'].append(tmp[1])

#length of the sequences
lseq=len(data['seq'][0])

#definition of the correspondance table
trans_table={}
trans_table['A']=['A','A']
trans_table['T']=['T','T']
trans_table['C']=['C','C']
trans_table['G']=['G','G']
trans_table['-']=['-','-']
trans_table['R']=['A','G']
trans_table['Y']=['C','T']
trans_table['S']=['C','G']
trans_table['W']=['A','T']
trans_table['K']=['G','T']
trans_table['M']=['A','C']
trans_table['E']=['C','-']
trans_table['F']=['T','-']
trans_table['O']=['A','-']
trans_table['Q']=['G','-']
trans_num={}
trans_num['A']=['1','1']
trans_num['T']=['3','3']
trans_num['C']=['2','2']
trans_num['G']=['4','4']
trans_num['-']=['5','5']
trans_num['R']=['1','4']
trans_num['Y']=['2','3']
trans_num['S']=['2','4']
trans_num['W']=['1','3']
trans_num['K']=['4','3']
trans_num['M']=['1','2']
trans_num['E']=['2','5']
trans_num['F']=['3','5']
trans_num['O']=['1','5']
trans_num['Q']=['4','5']

#Look in all the sites for site having more than two different states. The index of these sites are stored in the variable indice
indice=[]
for i in range(lseq):
	tmp=[]
	for j in range(nseq):
		tmp.append(data['seq'][j][i])
	tmp_dic={}
	tmp_dic['nuc']=[]
	for tmp_nuc in tmp:
		for nuc in trans_table[tmp_nuc]:
			if nuc not in tmp_dic['nuc']:
				tmp_dic['nuc'].append(nuc)
	#print i,tmp_dic['nuc']
	if len(tmp_dic['nuc'])>2:
		indice.append(i)

#open the outfile
file=open(fileout,'w')
#Write the header
file.write(str(nseq)+'\n'+str(lseq)+'\n')
file.write('P')
for i in range(lseq):
	file.write(' '+str(i+1))

file.write('\n')

#Using the indice variable we define the sites with more than 2 sites as microsatellite
for i in range(lseq):
	if i in indice:
		file.write('M')
	else:
		file.write('S')

file.write('\n')

#Write the sequence in phase format
for i in range(nseq):
	#For all the sequences in the nexus file, we begin with writing the name
	file.write(data['name'][i]+'\n')
	tmpseq=data['seq'][i]
	tmpseq1=''
	tmpseq2=''
	for j in range(lseq):
		if j not in indice:
			#In this case, the site is a polymorphic site, we stay in the nucleotide notation
			if (j != 0) & ((j-1) in indice):
				tmpseq1 = tmpseq1 + ' '
				tmpseq2 = tmpseq2 + ' '
			tmpseq1=tmpseq1+trans_table[tmpseq[j]][0]
			tmpseq2=tmpseq2+trans_table[tmpseq[j]][1]
		else:
			#This site is a microsatellite site, so we use the numbered notation
#			if (j != 0) & ((j-1) not in indice):
#				tmpseq1 = tmpseq1 + ' '
#				tmpseq2 = tmpseq2 + ' '
			tmpseq1=tmpseq1+' '+trans_num[tmpseq[j]][0]
			tmpseq2=tmpseq2+' '+trans_num[tmpseq[j]][1]
	file.write(tmpseq1+'\n')
	file.write(tmpseq2+'\n')

#The outfile is finished. It is closed
print "Output done: "+fileout
file.close()
