#!/bin/bash
# Biostar-Lab Entrez Direct Script

# Search the NCBI nucleotide database for this accession PRJNA257197,
esearch -db nucleotide -query PRJNA257197

# To fetch the data for a search, pass it into efetch
esearch -db nucleotide -query PRJNA257197 | efetch -format fasta > genomes.fa

# Getting run information on a project
esearch -db sra -query PRJNA257197 | efetch -format runinfo > runinfo.csv

# Another way is via the “summary” format
esearch -db sra -query PRJNA257197 | efetch -format summary > summary.xlm

# Technically this is invalid XLM, but with 'xtract' help, we can visualize it
cat summary.xlm | xtract -pattern RUN_SET -element @accession | head

# Extracting taxonomy information
efetch -db taxonomy -id 9606,7227,10090 -format xml > output.xml

# Extracts elements from this document
cat output.xml | xtract -pattern Taxon -first TaxId ScientificName GenbankCommonName Division