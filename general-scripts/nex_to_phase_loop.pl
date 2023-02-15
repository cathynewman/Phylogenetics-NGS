#!/usr/bin/perl -w

# Modified by Catherine E. Newman from code written by Robert C. Thomson at the University of
# California - Davis.

# Input file: nexus format, non-interleaved. Alignment should not include any sites that have
# missing data for all sequences.

# Output file must be further processed to be used in PHASE. All 'N's must be replaced with '?'. Use
# code named Ns_and_dashes_to_questionmark.py.

@dnafilename = ('Poptri_1-12998279..13000279.nex', 'Poptri_1-32529545..32531545.nex'); #replace with filenames
foreach $name (@dnafilename)
{
{
open(DNAFILE, $name) or die "Cannot open file: $name\n"; #associate file contents with a variable
}
open (OUT, ">>$name.in"); #outfile name is infile name with extension ".in"

while (<DNAFILE>) 
	{
	if ($_ =~ /ntax=(\d+)/)
		{
		print OUT "$1\n"; #prints number of taxa
		}
	if ($_ =~ /nchar=(\d+)/i)
		{
		print OUT "$1\n"; #prints number of characters
		for ($i = 1; $i <= $1; $i++)
			{
			# prints 'S' for each character (i.e., outfile should have string of 'S's the same length
			# as the sequence). 'S' may need to be replaced with another letter depending on type of data
			# (see manual for PHASE).
			print OUT "S";
			}
		print OUT "\n";
		}
	# The following line is specific to how your sequences are named. This line recognizes lines
	# beginning with sequence name, so modify to recognize your names. Original code recognizes
	# sequence names in this format: 10 characters total, with last character 'x', followed by a
	# single space, followed by the DNA sequence.
	elsif ($_ =~/(\w\w\w\w\w\w\w\w\wx)\s(.+)/)
		{
		print OUT "$1\n"; #prints sequence name
		
		# Each diploid sequence must be represented by 2 lines of sequence.
		# For heterozygous sites, it does not matter which allele is in which of the 2 sequences,
		# so this portion of the code replaces ambiguity codes (M,R,W,S,Y,K) in the original sequence
		# with the 2 nucleotides, one in each output sequence (e.g., replaces an 'M' in the original
		# with 'C' in one sequence and 'A' in the other).
		$seq_1 = $2;
		$seq_2 = $2;
		$seq_1 =~tr/MRWSYK/AAACCG/; #replaces ambiguity with first allele
		$seq_2 =~tr/MRWSYK/CGTGTT/; #replaces ambiguity with second allele
		print OUT "$seq_1\n";
		print OUT "$seq_2\n";
		}
}
}
close OUT;
close DNAFILE;
exit;