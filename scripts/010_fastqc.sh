#!/bin/bash

# Perform fastqc analysis on all fastq files in /data_input/

echo "Activating conda environment"
echo

eval "$(conda shell.bash hook)"
conda activate nanopore

INPUT_DIR="$HOME/Project_Nanopore/data_input"
OUTPUT_DIR="$HOME/Project_Nanopore/results/fastqc/"

echo "Input directory: $INPUT_DIR"
echo "Output directory: $OUTPUT_DIR"
echo

cd "$INPUT_DIR" || exit

for file in *.fastq*
do
  # create output directory for NanoPlot results
  fastqc_output_dir="$OUTPUT_DIR/fastqc_${file%.fastq*}" # rm .fastq+extension
  mkdir -p "$fastqc_output_dir"

  # perform NanoPlot analysis
  echo performing FastQC analysis on $file
  fastqc --outdir $fastqc_output_dir $file
done

conda deactivate

echo
echo "Deactivating conda environment"