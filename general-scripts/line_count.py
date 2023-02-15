#!/usr/bin/env python

filename='Galaxy.example.fastq'
file=open(filename)

lines=0
for line in file:
	lines=lines+1

print filename, 'has', lines, 'lines'