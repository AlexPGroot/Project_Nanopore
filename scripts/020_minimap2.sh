#!/bin/bash

# minimap2 aligns DNA sequence to reference 
# makes use of recommended settings for nanopore reads.
# uses extra junction file for improved junction accuracy for noisy reads
# by default uses --split-prefix to reduce server memory load

echo activating conda environment
echo

eval "$(conda shell.bash hook)"
conda activate nanopore

# Directory containing input files
INPUT_DIR="$HOME/Project_Nanopore/results/filter_fastqc/"

# Directory to contain results of minimap2
OUTPUT_DIR="$HOME/Project_Nanopore/results/sam/"

# Path to data folder and reference genome
REF="$HOME/Project_Nanopore/data/index/hg38.idx"
#REF="$HOME/Project_Nanopore/data/index/Homo_sapiens.GRCh38.dna.primary_assembly.fa"

# Path to junc bed
JUNC="$HOME/Project_Nanopore/data/junc_Homo_sapiens.GRCh38.111.gtf.bed"

# Change directory to the input directory
cd "$INPUT_DIR" || exit

# perform code on all "*fastq* *fastq.gz*" files
for file in *fastq.gz*; do
    # sed -E subtitute is used to remove file extension in order to retrieve the base name of the file
    # \ to escape dot as we want to remove file extensions.
    #
    base_name=$(echo "$file" | sed -E 's/\.fastq\.gz$//')

    # Run minimap2 alignment
    # minimap2 -ax splice -k14 -uf -t6 "$REF" "$file" > "${OUTPUT_DIR}${base_name}.sam"
     minimap2 -ax splice -k14 -uf -t8 --junc-bed "$JUNC" "$REF" --split-prefix tmp "$file" > "${OUTPUT_DIR}${base_name}.sam"
     
     # Cleanup old files
     echo removing old files
     rm "$file"
done

conda deactivate

echo 
echo deactivating conda environment