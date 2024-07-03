#!/bin/bash

#usage : ./divide_and_index.sh <reference.fa> <num_parts> <out.idx> <minimap2_exe> <minimap2_profile>

#reference.fa - path to the fasta file containing the reference genome
#num_parts - number of partitions in the index
#out.idx - path to the file to which the index should be dumped
#minimap2_exe - path to the minimap2 executable
#minimap2_profile - minimap2 pre-set for indexing (map-pb or map-ont)

#Example : ./divide_and_index.sh hg19.fa 4 hg19.idx minimap2 map-ont

# idxtools by hasindu2008
# https://github.com/hasindu2008/minimap2-arm/tree/4ecf5ef91ccb94f647f2b1699250062cac63939e/misc/idxtools

bash ~/Project_Nanopore/idxtools/divide_and_index.sh Homo_sapiens*.fa 4 hg38.idx minimap2 map-ont
# bash path to idxtools, .fa file, 4 cores, hg38.idx output in data/index folder, minimap2 minimap2_profile