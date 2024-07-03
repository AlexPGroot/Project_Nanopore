<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->
<a name="readme-top"></a>
<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->



<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/ProjecticumDataScience/Project_Nanopore">
    <img src="images/github/logo.png">
  </a>

<h3 align="center">Project Nanopore</h3>

  <p align="center">
    Workflow for processing of MinION Nanopore long read RNA sequencing data.
    <br />
    <a href="https://github.com/ProjecticumDataScience/Project_Nanopore?tab=readme-ov-file#getting-started"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/ProjecticumDataScience/Project_Nanopore/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/ProjecticumDataScience/Project_Nanopore/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://github.com/ProjecticumDataScience/Project_Nanopore) <br>
<br> [![Product Name Screen Shot][product-screenshot2]](https://github.com/ProjecticumDataScience/Project_Nanopore)


### Built With

[![made-with-bash](https://img.shields.io/badge/-Made%20with%20Bash-1f425f.svg?logo=image%2Fpng%3Bbase64%2CiVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw%2FeHBhY2tldCBiZWdpbj0i77u%2FIiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8%2BIDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTExIDc5LjE1ODMyNSwgMjAxNS8wOS8xMC0wMToxMDoyMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTUgKFdpbmRvd3MpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkE3MDg2QTAyQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3IiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkE3MDg2QTAzQUZCMzExRTVBMkQxRDMzMkJDMUQ4RDk3Ij4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QTcwODZBMDBBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QTcwODZBMDFBRkIzMTFFNUEyRDFEMzMyQkMxRDhEOTciLz4gPC9yZGY6RGVzY3JpcHRpb24%2BIDwvcmRmOlJERj4gPC94OnhtcG1ldGE%2BIDw%2FeHBhY2tldCBlbmQ9InIiPz6lm45hAAADkklEQVR42qyVa0yTVxzGn7d9Wy03MS2ii8s%2BeokYNQSVhCzOjXZOFNF4jx%2BMRmPUMEUEqVG36jo2thizLSQSMd4N8ZoQ8RKjJtooaCpK6ZoCtRXKpRempbTv5ey83bhkAUphz8fznvP8znn%2B%2F3NeEEJgNBoRRSmz0ub%2FfuxEacBg%2FDmYtiCjgo5NG2mBXq%2BH5I1ogMRk9Zbd%2BQU2e1ML6VPLOyf5tvBQ8yT1lG10imxsABm7SLs898GTpyYynEzP60hO3trHDKvMigUwdeaceacqzp7nOI4n0SSIIjl36ao4Z356OV07fSQAk6xJ3XGg%2BLCr1d1OYlVHp4eUHPnerU79ZA%2F1kuv1JQMAg%2BE4O2P23EumF3VkvHprsZKMzKwbRUXFEyTvSIEmTVbrysp%2BWr8wfQHGK6WChVa3bKUmdWou%2BjpArdGkzZ41c1zG%2Fu5uGH4swzd561F%2BuhIT4%2BLnSuPsv9%2BJKIpjNr9dXYOyk7%2FBZrcjIT4eCnoKgedJP4BEqhG77E3NKP31FO7cfQA5K0dSYuLgz2TwCWJSOBzG6crzKK%2BohNfni%2Bx6OMUMMNe%2Fgf7ocbw0v0acKg6J8Ql0q%2BT%2FAXR5PNi5dz9c71upuQqCKFAD%2BYhrZLEAmpodaHO3Qy6TI3NhBpbrshGtOWKOSMYwYGQM8nJzoFJNxP2HjyIQho4PewK6hBktoDcUwtIln4PjOWzflQ%2Be5yl0yCCYgYikTclGlxadio%2BBQCSiW1UXoVGrKYwH4RgMrjU1HAB4vR6LzWYfFUCKxfS8Ftk5qxHoCUQAUkRJaSEokkV6Y%2F%2BJUOC4hn6A39NVXVBYeNP8piH6HeA4fPbpdBQV5KOx0QaL1YppX3Jgk0TwH2Vg6S3u%2BdB91%2B%2FpuNYPYFl5uP5V7ZqvsrX7jxqMXR6ff3gCQSTzFI0a1TX3wIs8ul%2Bq4HuWAAiM39vhOuR1O1fQ2gT%2F26Z8Z5vrl2OHi9OXZn995nLV9aFfS6UC9JeJPfuK0NBohWpCHMSAAsFe74WWP%2BvT25wtP9Bpob6uGqqyDnOtaeumjRu%2ByFu36VntK%2FPA5umTJeUtPWZSU9BCgud661odVp3DZtkc7AnYR33RRC708PrVi1larW7XwZIjLnd7R6SgSqWSNjU1B3F72pz5TZbXmX5vV81Yb7Lg7XT%2FUXriu8XLVqw6c6XqWnBKiiYU%2BMt3wWF7u7i91XlSEITwSAZ%2FCzAAHsJVbwXYFFEAAAAASUVORK5CYII%3D)](https://www.gnu.org/software/bash/)
<br>[![RStudio Community: RStudio Cloud](https://img.shields.io/endpoint?url=https%3A%2F%2Frstudio.github.io%2Frstudio-shields%2Fcategory%2Frstudio-cloud.json)](https://community.rstudio.com/c/rstudio-cloud)


<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- GETTING STARTED -->
## Getting Started
File structure:

- 'scripts' contains scripts used to run the workflow.
    scripts are ordered by order of usage.
- 'data' contains data files used by the programs in the workflow.
    Data such as annotations, reference genome and index are here.
- 'data_input' is the folder for raw data files to be analyzed.
    Loose fastq.gz files are placed here and can be archived once finished.
- 'results' contains folders with all manipulated data.
    Programs output their temp files here as well.

Chopper is used for removing adapter sequences.
minimap2 is used to align input data to reference genome.
aligned .sam data is then filtered by FLAG value and converted to .bam files for Bambu.

### Installation

1. Download from releases or clone the repo
   <br>[Releases](https://github.com/ProjecticumDataScience/Project_Nanopore/releases)
   
   ```sh
   git clone https://github.com/ProjecticumDataScience/Project_Nanopore.git
   ```
3. Install
   ```sh
   bash install_script.sh
   ```
   This will do the following:
   1. Create conda environments based on the supplied exported environments located in /conda_environments
   2. Download reference files from ensembl
   3. Create an index file for minimap2 using reference files
   4. Download example data from sg-nex-data.s3.amazonaws.com
  
<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Usage

### Example workflow [important]

When running the quickscript.sh it automatically uses scripts such as 011_seqtk.sh and 012_chopper.sh.
011_seqtk.sh has an extra line to work in tandem with the two example SGNex data files:
```sh
seqtk sample -s123 "$file" 250000 | gzip > "s_${file}"
seqtk sample -s451 "$file" 250000 | gzip > "s2_${file}"
```
The purpose is to provide DESeq with more than 2 files as it doesn't function without them.
It also makes the files smaller for easier and faster running of the example workflow.

This extra line should be removed when running a full workflow with real data, or should be altered to suit your needs if subsetting is desired.

011_seqtk.sh alters the raw data_input, and 012_chopper.sh uses this data to create the output in /filter_fastqc/.
012_chopper.sh also comes with automatic file cleanup. Make sure the /data_input/ files are stored somewhere safe to prevent them from having to be redownloaded manually later.
Such as /data_input/downloaded, then copy the example files to /data_input/ when running the workflow.

### Main workflow

1. Make sure reference genome and annotations are downloaded in 
  ```sh
~/Project_Nanopore/data
  ```
2. Change to scripts directory
  ```sh
  cd ~/Project_Nanopore/scripts
  ```
3. Activate scripts (See below for more information)
  ```sh
  bash quickscript.sh
  ```
4. Run Bambu through 050_bambu.R
  ```R
  se <- bambu(reads = samples.bam, annotations = annotations, genome = fa.file)
  ```
5. Run Deseq analysis with summarizedExperiment from Bambu
  ```R
  dds <- DESeqDataSet(se, 
             design = ~ treatment)
  ```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Scripts

#### quickscript.sh
  This script is essentially just a wrapper for all the scripts used in this workflow. Because the process is time-consuming this script automates a large majority of the workflow after tuning parameters in the seperate scripts and choosing the scripts you'd like to run in quickscript.sh
  This is an example of what that looks like:
  
  ```sh
bash 009_bam_to_fastq.sh
bash 011_seqtk.sh
bash 012_chopper.sh
bash 020_minimap2.sh
bash 030_samflagtobam.sh
bash 041_bam_filter.sh
echo done
  ```


#### 009_bam_to_fastq.sh
  This workflow generally takes .fastq files as input in /data_input. <br>
  This script converts .bam files in /data_input to .fastq files using samtools bam2fq
  ```sh
  samtools bam2fq file.bam > file.fastq
  ```

#### 010_fastqc.sh
  This script performs the fastqc quality control analysis on all .fastq files currently in the /data_input folder.
  ```sh
  fastqc --outdir $fastqc_output_dir $file
  ```

#### 010_nanoPlot.sh
  Alternatively, NanoPlot can be used.
  This script performs the NanoPlot quality control analysis on all .fastq files currently in the /data_input folder.
  ```sh
  NanoPlot -t 8 -o "$nanoplot_output_dir" --fastq "$file"
  ```

#### 011_seqtk.sh
  This script is optional and is used for subsetting the amount of reads in the input files. The script should be altered depending on your needs.
  ```sh
  seqtk sample -s123 "$file" 2500000 > "s_${file}"
  # `-s123` is the seed used when generating the random subset
  # `2500000` is the amount of desired reads 
  ```
  seqtk can take either fastq or fastq.gz files and the resulting file is in .gz format which is required for 020_minimap.sh

#### 012_chopper.sh
  Chopper is a tool meant for filtering and trimming long read fastq files.
  It can perform --headcrop or --tailcrop to cut off parts at the start or end of a read, such as adapters.
  It can also be used to filter reads based on quality, by default this script uses (Q>10)
  ```sh
chopper --quality 10
  ```
  chopper can take either fastq or fastq.gz files and the resulting file is in .gz format which is required for 020_minimap.sh

#### 020_minimap2.sh
  Minimap2 aligns the input files against a reference genome.
  The provided settings are recommended for nanopore data, however some of these options are overwritten by the pre-built index file.
  ```sh
  minimap2 -ax splice -k14 -uf -t8 --junc-bed "$JUNC" "$REF" --split-prefix tmp input.fastq > output.sam
  # default settings are recommended settings for longread sequences.
  # a junction file is used for additional accuracy around junctions
  # --split-prefix is used by default due to RAM constraints and a split-index is used as a reference
  ```
Minimap2 can make use of a junction.bed file for splicing junctions.
The junc file can be generated as such as per the minimap2 github page:
```sh
paftools.js gff2bed anno.gff > anno.bed
```

#### 030_samflagtobam.sh
  This script filters the files based on sam FLAGS. It filters FLAG 0 and FLAG 16 by default:
```sh
awk 'BEGIN {OFS="\t"} $2 == 0 || $2 == 16 {print $0}' "$file" >> "${OUTPUT_DIR}$file"
```
  This script converts then .sam files to .bam files using samtools.
  The script takes input from /results/flag_filter_sam/ to output /results/bam/
  ```sh
  samtools view -o "${OUTPUT_DIR}${base_name}.bam" "${INPUT_DIR}${file}"
  ```

#### 041_bam_filter.sh
  This script filters bam files based on chromosomes. By default it outputs chr1-22.
  In order to do so it first checks for a .bed file and if it doesn't exist generates it based on the reference genome in /data/
  It then uses samtools bamfilt to generate the filtered file.
  ```sh
  samtools view -L GRCh38.bed -o bamfilt_outputfile input_file
  ```

#### 050_bambu.R
  This is the R file in which the bambu is performed. It utilizes the following packages:
  ```R
here
ggbio
bambu
tidyverse
  ```
  Bambu requires an fa.file and gtf.file. It then creates an annotation object using bambu::prepareAnnotations(gtf.file).
  This annotation file can optionally be saved as an .RDS file and using a list of all .bam samples in /results/bam the summarizedExperiment object is created using bambu.
  ```R
fa.file <- here("data/index/Homo_sapiens.GRCh38.dna.primary_assembly.fa")
gtf.file <- here("data/Homo_sapiens.GRCh38.111.gtf")
annotations <- prepareAnnotations(gtf.file) # This function creates a reference annotation object which is used for transcript discovery and quantification in Bambu.
annotations %>% saveRDS(here("data/bambu_annotations_Homo_sapiens.GRCh38.111.RDS"))
samples.bam <- list.files(here("results/bam"), pattern = ".bam$", full.names = TRUE)

# running Bambu 
se <- bambu(reads = samples.bam, annotations = annotations, genome = fa.file, ncore = 12)
se %>% saveRDS(here("results/bambu/output.rds"))
  ```
  This summarisedExperiment(se) file is saved for later and can be used for the deseq analysis.
  It has built-in plotting features too:
  ```R
plotBambu(se, type = "pca")
  ```
<img src="images/github/pca.png">

#### 050_bigwig.sh
  This script converts processed .BAM files to BigWig (.bw) files and filters based on exons for export and viewing in IGV browser.
  See `IGV Browser`

#### 050_deseq.Rmd
  The markdown file where the differential expression analysis is performed.
  It uses the summarisedExperiment output from bambu as input.
  The DESeq object is created as follows:
  ```R
dds <- DESeqDataSet(se, 
             design = ~ treatment)
  ```
This allows for results such as volcano plots
<img src="images/github/screenshot3.png">

and up- and down regulation of genes with ensembl identifiers
<img src="images/github/screenshot4.png">

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### IGV Browser
<img src="images/github/igv.png">
This workflow also allows for conversion of processed .BAM files to BigWig (.bw) files for export and viewing in IGV browser.

1. Run the main workflow up to the usage of at least 041_bam_filter.sh.
   This will provide .bam files located in /results/bam
3. Run the bigwig script:
     ```sh
     bash 050_bigwig.sh
     ```
The bigwig script will now execute samtools to sort and index the bam files from the /results/bam folder into the /results/bw folder.
These files are then converted to small .bw files and the temp files generated by the sorting and indexing are removed.
3. Download the .bw files residing in the /results/bw folder and [open in the IGV browser locally](https://igv.org/doc/desktop/#DownloadPage/) or [upload to the web app](https://igv.org/app/)

050_bigwig.sh converts files from .bam to .bw as such:
```sh
awk '$3 == "exon" {print $1, $4-1, $5}' OFS='\t' annotation.gtf > exons.bed

samtools sort input.bam -o output.bam
bedtools intersect -a output.bam -b exons.bed > exons_output.bam
samtools index exons_output.bam
bamCoverage -b exons_output.bam -o output.bw --normalizeUsing RPKM
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap
The project is currently still being built and worked on, new future features might be added here once 1.0 is released.

- [X] 1.0 Release
- [ ] New feature 2
- [ ] New feature 3
    - [ ] Nested Feature

See the [open issues](https://github.com/ProjecticumDataScience/Project_Nanopore/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- RELEASE HISTORY -->
## Release history
- [v1.0.0 Release](https://github.com/ProjecticumDataScience/Project_Nanopore/releases/tag/v1.0.0)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.





<!-- CONTACT -->
## Contact

Alex Groot - alex.groot@student.hu.nl

Project Link: [https://github.com/ProjecticumDataScience/Project_Nanopore](https://github.com/ProjecticumDataScience/Project_Nanopore.git)



<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Hogeschool Utrecht Projecticum Datascience](https://github.com/ProjecticumDataScience)
* [Göke Lab](https://github.com/GoekeLab)
* [Best-README-Template](https://github.com/othneildrew/Best-README-Template)
* [idxtools by hasindu2008](https://github.com/hasindu2008/minimap2-arm/tree/master/misc/idxtools)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[product-screenshot]: images/github/screenshot.png
[product-screenshot2]: images/github/screenshot2.png
[product-screenshot3]: images/github/screenshot3.png
[product-screenshot4]: images/github/screenshot4.png
