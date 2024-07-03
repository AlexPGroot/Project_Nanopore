#!/bin/bash

# Homo_sapiens.GRCh38.dna_rm.primary_assembly.fa.gz	2023-10-04 12:31	458M	 
# Primary assembly
wget https://ftp.ensembl.org/pub/release-111/fasta/homo_sapiens/dna/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz -P ~/Project_Nanopore/data
gzip -d ~/Project_Nanopore/data/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz
cp ~/Project_Nanopore/data/Homo_sapiens.GRCh38.dna.primary_assembly.fa ~/Project_Nanopore/data/index
# gzip -dk  *.gz


# Homo_sapiens.GRCh38.111.gtf.gz	2023-10-08 23:49	52M	 
# Gene annotation files
wget https://ftp.ensembl.org/pub/release-111/gtf/homo_sapiens/Homo_sapiens.GRCh38.111.gtf.gz -P ~/Project_Nanopore/data
gzip -d ~/Project_Nanopore/data/Homo_sapiens.GRCh38.111.gtf.gz