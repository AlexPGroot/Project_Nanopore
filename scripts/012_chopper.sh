#!/bin/bash

# Chopper is used to trim files by size --headcrop / --tailcrop
# and quality in Phred
# See chopper --help in nanopore environment for more options
# Script output is .gz format which is required for minimap

echo activating conda environment
echo

eval "$(conda shell.bash hook)"
conda activate nanopore

# Directory containing input files
INPUT_DIR="$HOME/Project_Nanopore/data_input/"

# Directory to contain results of chopper
OUTPUT_DIR="$HOME/Project_Nanopore/results/filter_fastqc/"

# Change directory to the input directory
cd "$INPUT_DIR" || exit

# perform code on all "*fastq* *fastq.gz*" files
for file in *.fastq* ; do
  if [[ "$file" == *.gz ]]; then
    echo decompressing $file
    echo chopper $file 
    gunzip -c "$file" | chopper --quality 10 --headcrop 25 | gzip > "${OUTPUT_DIR}filter${file}.gz"
    rm $file
  else
    echo chopper $file
    cat "$file" | chopper --quality 10  --headcrop 25 | gzip > "${OUTPUT_DIR}filter${file}.gz"
    rm $file
  fi
done

conda deactivate

echo 
echo deactivating conda environment