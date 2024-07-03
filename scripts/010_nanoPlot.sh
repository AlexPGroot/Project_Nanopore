#!/bin/bash

# Perform NanoPlot analysis on all fastq files in /data_input/

echo "Activating conda environment"
echo

eval "$(conda shell.bash hook)"
conda activate nanoplot

INPUT_DIR="$HOME/Project_Nanopore/data_input"
OUTPUT_DIR="$HOME/Project_Nanopore/results/fastqc/"

echo "Input directory: $INPUT_DIR"
echo "Output directory: $OUTPUT_DIR"
echo

cd "$INPUT_DIR" || exit

for file in *.fastq*
do
  # create output directory for NanoPlot results
  nanoplot_output_dir="$OUTPUT_DIR/nanoplot_${file%.fastq*}" # rm .fastq+extension
  mkdir -p "$nanoplot_output_dir"

  # perform NanoPlot analysis
  echo performing NanoPlot analysis on $file
  NanoPlot -t 8 -o "$nanoplot_output_dir" --fastq "$file"
done

conda deactivate

echo
echo "Deactivating conda environment"