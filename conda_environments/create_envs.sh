#!/bin/bash
echo "This script will create the following conda environments required for the workflow:"
echo "nanoplot, nanopore, samtools, seqtk"
echo "Before running make sure environments don't already exist."

read -p "Type \"Yes\" to continue: " choice
case "$choice" in 
  Yes ) echo "Yes" # Only if typed "Yes" create environments
    conda env create --name nanoplot -f ~/Project_Nanopore/conda_environments/nanoplot.yml
    conda env create --name nanopore -f ~/Project_Nanopore/conda_environments/nanopore.yml
    conda env create --name samtools -f ~/Project_Nanopore/conda_environments/samtools.yml
    conda env create --name seqtk -f ~/Project_Nanopore/conda_environments/seqtk.yml;;
  n|N|No ) echo "No";; # Else
  * ) echo "Cancelled";;
esac

