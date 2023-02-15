#!/usr/bin/env python
#os is a module that allows the script to interact with the unix shell
import os, sys

#imports random number generators for prior distributions
from random import randrange, uniform

# randrange gives you an integral value
#irand = randrange(0, 10)

# uniform gives you a floating-point value
#frand = uniform(0, 10)

for x in range(0,999):
 theta = uniform(0, 10)
 cmd = "./ms 243 1 -t " + str(theta) + "-I 2 38 205 >> runms_1rep_CEN.out"
 print cmd
 status = os.system(cmd)


