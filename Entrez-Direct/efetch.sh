#!/bin/bash
# Biostar-Lab Entrez Direct Script

# General format
efetch -db database_type -id acession_number -format type_of_format

# Accession number AF086833 in Genbank format.
efetch -db nuccore -id AF086833 -format gb > AF086833.gb

# Accession number AF086833 in Fasta format.
efetch -db nuccore -id AF086833 -format fasta > AF086833.fa

# efetch can take additional parameters and select a section of the sequence.
efetch -db nuccore -id AF086833 -format fasta -seq_start 1 -seq_stop 5 -strand 1