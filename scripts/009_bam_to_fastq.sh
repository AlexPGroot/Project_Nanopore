#!/bin/bash

# Script to convert bam files in /data_input/ to fastq files
# Followup scripts require fastq format so use this script when input is .bam

echo activating conda environment
echo

eval "$(conda shell.bash hook)"
conda activate samtools

# Directory containing input files
INPUT_DIR="$HOME/Project_Nanopore/data_input/"
echo input directory = $INPUT_DIR
echo

# Directory to contain results of conversion, default is same folder
OUTPUT_DIR="$HOME/Project_Nanopore/data_input/"
echo output directory = $OUTPUT_DIR
echo

# Change directory to the input directory
cd "$INPUT_DIR" || exit

file_list=`ls -1 *.bam`
echo converting files: $file_list
echo

for file in *.bam ; do
  base_name=$(echo "$file" | sed -E 's/\.bam$//')
  echo `date +%F%t%T` converting $file to ${base_name}.fastq
  
  samtools bam2fq $file > ${base_name}.fastq
  
  # rm $file
done

conda deactivate

echo
echo deactivating conda environment