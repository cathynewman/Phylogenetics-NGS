# UCE processing after alignment
# Must be done locally because of sqlite
# see https://github.com/faircloth-lab/phyluce/blob/master/docs/uce-processing.rst

phyluce_assembly_match_contigs_to_probes --contigs assemblies-trinity --probes tetrapods-uce-5kv1.fasta --output uce-search-results

# Creating data matrix file (incomplete only)
phyluce_assembly_get_match_counts --locus-db probe.matches.sqlite --taxon-list-config dataset1.conf --taxon-group 'dataset1' --output taxon-set1/dataset1_out.conf --incomplete-matrix
phyluce_assembly_get_match_counts --locus-db probe.matches.sqlite --taxon-list-config dataset1all.conf --taxon-group 'dataset1all' --extend-locus-db pserratus/probe.matches.sqlite --output taxon-set1all/dataset1all_out.conf --incomplete-matrix
phyluce_assembly_get_match_counts --locus-db probe.matches.sqlite --taxon-list-config dataset-slimy.conf --taxon-group 'dataset-slimy' --output taxon-slimy/dataset-slimy_out.conf --incomplete-matrix

# Extracting fasta data using data matrix config file
phyluce_assembly_get_fastas_from_match_counts --contigs assemblies-trinity --locus-db probe.matches.sqlite --match-count-output taxon-set1/dataset1_out.conf --incomplete-matrix taxon-set1/dataset1.incomplete --output taxon-set1/dataset1.fasta
phyluce_assembly_get_fastas_from_match_counts --contigs assemblies-trinity --locus-db probe.matches.sqlite --match-count-output taxon-set1all/dataset1all_out.conf --incomplete-matrix taxon-set1all/dataset1all.incomplete --extend-locus-db pserratus/probe.matches.sqlite --extend-locus-contigs contigs-pserratus --output taxon-set1all/dataset1all.fasta
phyluce_assembly_get_fastas_from_match_counts --contigs assemblies-trinity --locus-db probe.matches.sqlite --match-count-output taxon-slimy/dataset-slimy_out.conf --incomplete-matrix taxon-slimy/dataset-slimy.incomplete --output taxon-slimy/dataset-slimy.fasta

# Get assembly coverage info
phyluce_assembly_get_trinity_coverage_for_uce_loci --assemblies assemblies-coverage --match-count-output taxon-set1/dataset1_out.conf --type untrimmed --locus-db probe.matches.sqlite --output Coverage_data
