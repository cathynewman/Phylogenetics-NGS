reader = open('/Users/mike/Desktop/BIO7800/Galaxy.example.fastq', 'r')
barcode = ['ATCACGT', 'CGATGTT', 'TTAGGCT', 'TGACCAT', 'ACAGTGT', 'GCCAATT', 'CAGATCT', 'ACTTGAT']
file = ['','','','','','','',''] #files to open will be assigned to this list

extra = open('/Users/mike/Desktop/BIO7800/Scripts/trash.txt', 'w') # lines not matched to barcodes are written here

counter = 0
for code in barcode:    # Create files by barcode
    file[counter] = open('/Users/mike/Desktop/BIO7800/Scripts/%s.txt' %barcode[counter], 'w')
    counter += 1
for line in reader:     # Match lines to barcodes
    if line[0:7] == barcode[0]:
        file[0].write(line)
    elif line[0:7] == barcode[1]:
        file[1].write(line)
    elif line[0:7] == barcode[2]:
        file[2].write(line)
    elif line[0:7] == barcode[3]:
        file[3].write(line)
    elif line[0:7] == barcode[4]:
        file[4].write(line)
    elif line[0:7] == barcode[5]:
        file[5].write(line)
    elif line[0:7] == barcode[6]:
        file[6].write(line)
    elif line[0:7] == barcode[7]:
        file[7].write(line)
    else: 
        extra.write(line)
reader.close()
extra.close()
for a in file:
    a.close()