library(here)
library(ggbio)
library(bambu)
library(tidyverse)

# data preparation
fa.file <- here("data/index/Homo_sapiens.GRCh38.dna.primary_assembly.fa")
gtf.file <- here("data/Homo_sapiens.GRCh38.111.gtf")
annotations <- prepareAnnotations(gtf.file) # This function creates a reference annotation object which is used for transcript discovery and quantification in Bambu.
annotations %>% saveRDS(here("data/bambu_annotations_Homo_sapiens.GRCh38.111.RDS"))
# annotations <- readRDS(here("data/bambu_annotations_Homo_sapiens.GRCh38.111.RDS"))
samples.bam <- list.files(here("results/bam"), pattern = ".bam$", full.names = TRUE)

# running Bambu 
se <- bambu(reads = samples.bam, annotations = annotations, genome = fa.file, ncore = 12)
se %>% saveRDS(here("results/bambu/example_bambu_se.rds"))
# se <- readRDS(here("results/bambu/ .rds"))

# After creating se it's possible to visualize summarizedExperiment using built-in plotBambu:

plotBambu(se, type = "pca")

# se gets used in 050_deseq.rmd

assays(se) #returns the transcript abundance estimates as counts or CPM.
rowRanges(se) #returns a GRangesList (with genomic coordinates) with all annotated and newly discovered transcripts.
rowData(se) #returns additional information about each transcript such as the gene name and the class of the newly discovered transcript.

assays(se)$counts
plotBambu(se, type = "annotation", gene_id = "ENSG00000087077")
plotBambu(se, type = "annotation", transcript_id = "tx.9")
# plotBambu(se, type = "pca") %>% ggplot2::ggsave(filename = "pca_SGnex_only.jpeg",
                                              #  path = here::here("results"),
                                              #  device = "jpeg",
                                              #  bg = "white")