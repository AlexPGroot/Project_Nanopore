#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate samtools

# Directory containing input files
INPUT_DIR="$HOME/Project_Nanopore/results/bam/"

# Directory to contain results of bigwig conversion
OUTPUT_DIR="$HOME/Project_Nanopore/results/bw/"

# Annotation file with exon information
ANNOTATION_FILE="$HOME/Project_Nanopore/data/Homo_sapiens.GRCh38.111.gtf"

# cd to input directory
cd "$INPUT_DIR" || exit

#################

# Extract exon regions from the GTF file once, before the loop
awk '$3 == "exon" {print $1, $4-1, $5}' OFS='\t' "$ANNOTATION_FILE" > "$OUTPUT_DIR/exons.bed"

#################

for file in *.bam
do
  # Get base name from input files for output later
  base_name=$(echo "$file" | sed -E 's/\.bam$//' )
  
  # Files need to be sorted before they can be indexed:
  echo "[1/5] Starting samtools sort on ${file}"
  samtools sort "${INPUT_DIR}${file}" -o "${OUTPUT_DIR}sort_${file}"
  
  # Filter BAM file to only keep exons
  echo "[2/5] Filtering ${file} to only keep exons"
  bedtools intersect -a "${OUTPUT_DIR}sort_${file}" -b "${OUTPUT_DIR}exons.bed" > "${OUTPUT_DIR}exons_only_${file}"
  
    # Files need to be indexed before they can be converted to .bw
  echo "[3/5] Starting samtools index on ${file}"
  samtools index "${OUTPUT_DIR}exons_only_${file}"
  
  # Starts bw conversion; -p 8 flag indicates usage of 8 cores
  echo "[4/5] Converting filtered ${file} to .bw"
  bamCoverage -b "${OUTPUT_DIR}exons_only_${file}" -o "${OUTPUT_DIR}${base_name}.bw" -p 12  --normalizeUsing BPM
  
  # Removes temporary files to save space
  echo "[5/5] Removing temp files for ${file}"
  rm "${OUTPUT_DIR}sort_${file}" "${OUTPUT_DIR}exons_only_${file}.bai" "${OUTPUT_DIR}exons_only_${file}"
done

# Cleanup the exons.bed file
rm "${OUTPUT_DIR}exons.bed"

conda deactivate
