#!/bin/bash

# Takes minimap2 output in /results/sam and does the following:
# Filters based on flags, currently 0 and 16; reads on forward and reverse strand.
# See: https://broadinstitute.github.io/picard/explain-flags.html for more information on flags
# Then converts sam file to bam using samtools -o

echo activating conda environment
echo

eval "$(conda shell.bash hook)"
conda activate samtools

# Directory containing input sam files
INPUT_DIR_SAM="$HOME/Project_Nanopore/results/sam/"
# Directory to contain results of filtering; containing FLAG == 0 or 16
OUTPUT_DIR_SAM="$HOME/Project_Nanopore/results/flag_filter_sam/"
# Directory to contain results of minimap2
OUTPUT_DIR_BAM="$HOME/Project_Nanopore/results/bam/"

# Change directory to the input directory
cd "$INPUT_DIR_SAM" || exit

# Perform code on all .sam files
for file in *.sam*; do
    # Output headers to new file.
    grep "^@..\s*" "$file" > "${OUTPUT_DIR_SAM}$file"

    # Append all lines with FLAG values 0 and 16 to output file.
    awk 'BEGIN {OFS="\t"} $2 == 0 || $2 == 16 {print $0}' "$file" >> "${OUTPUT_DIR_SAM}$file"

    # Clean up the original SAM file
    rm "$file"

    # Move to the next step with the filtered SAM file
    base_name=$(echo "$file" | sed -E 's/\.sam$//')
    samtools view -o "${OUTPUT_DIR_BAM}${base_name}.bam" "${OUTPUT_DIR_SAM}${file}"

    # Clean up the filtered SAM file
    rm "${OUTPUT_DIR_SAM}$file"
done

conda deactivate

echo 
echo deactivating conda environment