# TCGA study case

## Table of content

- [Introduction](#introduction)
- [Data sources](#data-sources)
- [Data preprocessing](#data-preprocessing)
- [Use in the different courses](#use-in-the-different-courses)

## Introduction

This page describes a study case based on data from **The Cancer Genome Atlas** (**TCGA**; <https://cancergenome.nih.gov/>). This dataset contains more than 11,285 samples from patients suffering of a wide variety of cancer types. We use some subsets of this huge dataset for different courses of the [Diplôme Universitaire en Bioinformatique Intégrative (DU-Bii)](https://du-bii.github.io/accueil). 

The full datasets are available in the NCBI databases (Gene Expression Ombinus, Short Read Archives). 

For the sake of simplicity, we took benefit of pre-processed data made available by Ron Shamir's team.

We provide here 

- the links to the sources of information,
- the scripts used to extract subsets of the original datasets, and format the them according to our particular needs.


## Data sources


### Publications

- G. Ciriello *et al.* (2015). Comprehensive Molecular Portraits of Invasive Lobular Breast Cancer, Cell. 163: 506–519. <https://doi.org/10.1016/j.cell.2015.09.033>.

- <https://www.nature.com/articles/nature11412>

### TCGA web site

<https://cancergenome.nih.gov/>


### Preprocessed datasets made available by Ron Shamir's team

- Multi-Omics Cancer Benchmark TCGA Preprocessed Data
- Publication: <https://academic.oup.com/nar/article/46/20/10546/5123392>
- Data availability: <http://acgt.cs.tau.ac.il/multi_omic_benchmark/download.html>
- Clinical annotation for the samples: <http://acgt.cs.tau.ac.il/multi_omic_benchmark/data/clinical.zip>

- Note: the data is pre-normalised (library scaling + log2 transformation)

- Selected study case: Breast cancer dataset

    - Data tables: <http://acgt.cs.tau.ac.il/multi_omic_benchmark/data/breast.zip>
    - **Relevant columns for classification**: 2 markers used by clinicians to assign tissues to cancer subtypes: *ER_Status_nature2012* and *HER2_Final_Status_nature2012*
       
       
     - Laura Cantini prepared an additional file with the subtypes (Human/subtypes_annotation.txt) + a script enabling to produce this subtype label based on the combination of these two markers (Human/SubAnnot.R)

### Recount2


### Data preprocessing

We downloaded the TCGA raw counts from the Recount2 database, and applied the following preprocessing steps:

1. select the samples belonging to the Breast Invasive Cancer (BIC) study;
2. define the cancer type (used as class label for supervised classification) based on the three immuno markers;
3. filter out "undetected" genes, i.e. genes having zero counts in almost all samples;
4. library size standardisation;
5. log2-transform of the counts;
6. detection of differentially expressed genes 
7. selection of a reduced subset of genes (likely to be relevant for clustering and supervised classification) by keeping the 1000 genes having the lowest adjusted p-value in differential expression analysis;
8. exported the different results (raw counts, filtered, normalised, differentially expressed) in TSV files.

The preprocessing was done with an R markdown file, which enables anyone to reproduce the results and understand each step. 

- Pre-processing report: [import_TCGA_from_Recount.html](import_TCGA_from_Recount.html)
- R markdown: [import_TCGA_from_Recount.Rmd](https://raw.githubusercontent.com/DU-Bii/study-cases/master/Homo_sapiens/TCGA_study-case/import_TCGA_from_Recount.Rmd)

## Use in the different courses

- Module 3 - Statistical analysis with R:
    - Differential analysis
    - Clustering
    - Evaluation of classifications: compare clustering results with markers
    - Supervised classification

<!--- Module 4: méthodes et outils bioinformatiques ? To check with Olivier and Olivier. -->

- Module 6 - Integrative bioinformatics
    - Multi-level factorisation of multi-omics data (Laura Cantini)

 
