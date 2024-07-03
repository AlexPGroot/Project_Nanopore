# quick script for performing first part of workflow

# bash 009_bam_to_fastq.sh
cp $HOME/Project_Nanopore/data_input/example_data/*.gz $HOME/Project_Nanopore/data_input/
bash 011_seqtk.sh # Seqtk is used in the example tryout workflow with SGNex samples to create smaller files for fast results
bash 012_chopper.sh
bash 020_minimap2.sh
bash 030_samflagtobam.sh
bash 041_bam_filter.sh

echo done
