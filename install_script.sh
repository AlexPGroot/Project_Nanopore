#!/bin/bash
# Installs and downloads most of the stuff required to get started

# wrapper for script that creates conda environments
bash ~/Project_Nanopore/conda_environments/create_envs.sh

# wrapper for script that downloads used references from ensembl
bash ~/Project_Nanopore/data/download_ref_genome.sh

# wrapper for script that creates divided index used in minimap2 using idxtools
cd ~/Project_Nanopore/data/index/ || exit
bash mk_divide_index.sh
cd || exit

# download example data
wget http://sg-nex-data.s3.amazonaws.com/data/sequencing_data_ont/fastq/SGNex_HepG2_cDNA_replicate1_run4/SGNex_HepG2_cDNA_replicate1_run4.fastq.gz --directory-prefix=$HOME/Project_Nanopore/data_input/example_data/
wget http://sg-nex-data.s3.amazonaws.com/data/sequencing_data_ont/fastq/SGNex_MCF7_cDNA_replicate1_run3/SGNex_MCF7_cDNA_replicate1_run3.fastq.gz --directory-prefix=$HOME/Project_Nanopore/data_input/example_data/
