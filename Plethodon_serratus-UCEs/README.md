# _Plethodon serratus_ UCEs

<code>*.qsub</code> files are job submission files for LONI HPC or HPC @ LSU (old job submission system)

<code>0_Plethodon_UCE_processing_commands.txt</code> is a reference file containing a running list of all the commands + my notes.

Mostly UCE sequence data pre-processing:
- QC in illumiprocessor
- Contig assembly in Trinity via phyluce
- Aligning in MAFFT via phyluce
- Generating SNP datasets for population genetics analyses (Mike Harvey pipeline)
- Converting file formats for analysis programs

A few analysis scripts
- RAxML
- Starbeast

Other analysis programs (Structure, Geneland, etc.) were mainly run locally in GUIs, so no associated code.
