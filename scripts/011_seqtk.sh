#!/bin/bash

# seqtk is used for subsetting reads for smaller and less server intensive workloads.
# 'sample' option is used for subsetting
# -s123 sets the randomized seed to 123 for replicating purposes
# Script output is .gz format which is required for minimap

echo activating conda environment
echo

eval "$(conda shell.bash hook)"
conda activate seqtk

# Directory containing input files
INPUT_DIR="$HOME/Project_Nanopore/data_input/"

# Change directory to the input directory
cd "$INPUT_DIR" || exit

# perform code on all "*fastq* *fastq.gz*" files
for file in *.fastq* ; do
  if [[ "$file" == *.gz ]]; then
    echo seqtk file $file
    seqtk sample -s123 "$file" 250000 | gzip > "s_${file}"
    
    # This extra line is for easy access to extra files.
    # There are only 2 SGNex files added for trying out the workflow and deseq does not work with less than 3 files
    seqtk sample -s451 "$file" 250000 | gzip > "s2_${file}" 
    # delete when providing own data
    rm $file 
  else
    echo seqtk file $file
    seqtk sample -s123 "$file" 250000 > "s_${file}"
    rm $file
  fi
 # -s123 is seed used by default; use same seed to replicate results
done

conda deactivate

echo
echo deactivating conda environment