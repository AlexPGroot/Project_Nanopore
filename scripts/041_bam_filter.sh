#!/bin/bash

# need to index files first
# samtools index f_skhep_09042024_ctrl3.sorted.filtered.bam
# region "chr1" specifies an unknown reference name
# samtools view -H f_skhep_09042024_ctrl3.sorted.filtered.bam 
# doesnt contain "chr"

#!/bin/bash

# Directory containing input files
WORKING_DIR="$HOME/Project_Nanopore/results/bam"
echo directory = $WORKING_DIR

# create a BED for chr1 to chr22 from the fasta index of your reference genome.

if [ ! -f ${WORKING_DIR}/GRCh38.bed ]; then
    echo 'bed file not found, generating bed file'
    awk '/^[0-9]*\t/ {printf("%s\t0\t%s\n",$1,$2);}' \
    $HOME/Project_Nanopore/data/Homo_sapiens.GRCh38.dna.primary_assembly.fa.fai  > ${WORKING_DIR}/GRCh38.bed
fi

# awk '/^[0-9]*\t/ {printf("%s\t0\t%s\n",$1,$2);}' Homo_sapiens.GRCh38.dna.primary_assembly.fa.fai  > your.bed

# use this bed file to filter with samtools.

eval "$(conda shell.bash hook)"
conda activate samtools

# Change directory to the input directory
cd "$WORKING_DIR" || exit

for file in *.bam
do
  echo 'filtering' $file
  echo
  samtools view -L GRCh38.bed -o bamfilt_$file $file
  rm $file
done

echo 'files filtered'

conda deactivate

# samtools view -L your.bed -o pscooh2.bam f_skhep_16042024_pscooh2_merged.bam
# samtools view -L your.bed -o bamfilt_cltr1.bam filterskhep_ctrl1.bam