#!/bin/bash
#
# script used to export environments used in the workflow
# to be used with conda env create --name env -f env.yml
# or automated with create_envs.sh
#
  eval "$(conda shell.bash hook)" # allows swapping of conda environments 

  envs=("nanoplot" "nanopore" "samtools" "seqtk") # environments to be exported

  for env in "${envs[@]}" # loop through every element of the envs array
    do
      conda activate "$env"
      conda env export > "${env}.yml"
      conda deactivate
  done