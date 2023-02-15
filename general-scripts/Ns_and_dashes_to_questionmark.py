#!/usr/bin/env python

# This code further processes the output files from nex_to_phase_loop.pl to replace all Ns with
# question marks that will be recognized as missing data by PHASE. Output file will be ready
# to be run in PHASE. This code does not create a new file; it replaces Ns and dashes with '?' and
# overwrites the original. So if you need to retain the original file (the input for this code) in
# its original format, you must make a copy BEFORE running this code.

import os

FileList = ['Poptri_1-12998279..13000279.nex.in', 'Poptri_5-12046721..12048721.nex.in'] #replace with filenames

for File in FileList:
# Searches line by line for 'N' and '-' and replaces either with '?'
	Cmd1 = "perl -pi -w -e 's/N/?/g;' " + File
	Cmd2 = "perl -pi -w -e 's/-/?/g;' " + File
	status = os.system(Cmd1)
	status = os.system(Cmd2)