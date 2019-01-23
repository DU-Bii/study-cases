# TCGA study case

## Table of content

- [Introduction](#introduction)
- [Data sources](#data-sources)
- [Use in the different courses](#use-in-the-different-courses)

## Introduction

This page describes a study case based on data from __The Cancer Genome Atlas__ (__TCGA__). This dataset contains more than 12,000 samples from patients suffering of a wide variety of cancer types. We use some subsets of this huge dataset for different courses of the [Diplôme Universitaire en Bioinformatique Intégrative (DU-Bii)](https://du-bii.github.io/accueil). 

The full datasets are available in the NCBI databases (Gene Expression Ombinus, Short Read Archives). For the sake of simplicity, we took benefit of pre-processed data made available by Ron Shamir's team.

We provide here 

- the links to the sources of information,
- the scripts used to extract subsets of the original datasets, and format the them according to our particular needs.


## Data sources

- Web: <https://cancergenome.nih.gov/>

- Selected subset: 

    - Multi-Omics Cancer Benchmark TCGA Preprocessed Data
    - Publication: <https://academic.oup.com/nar/article/46/20/10546/5123392>
    - Data availability: <http://acgt.cs.tau.ac.il/multi_omic_benchmark/download.html>
    - Breast cancer dataset: <http://acgt.cs.tau.ac.il/multi_omic_benchmark/data/breast.zip>
        - Note: the data is pre-normalised (library scaling + log2 transformation)
    - Clinical annotation for the samples: <http://acgt.cs.tau.ac.il/multi_omic_benchmark/data/clinical.zip>
    - Relevant columns for classification: 
        - 2 markers used by clinicians to assign tissues to cancer subtypes
            - ER_Status_nature2012
            - HER2_Final_Status_nature2012
       
       
     - Additional file with the subtypes (Human/subtypes_annotation.txt) + a script enabling to produce this subtype label based on the combination of these two markers (Human/SubAnnot.R)
Use of this dataset:

## Use in the different courses

- Module 3 - Statistical analysis with R:
    - Differential analysis
    - Clustering
    - Evaluation of classifications: compare clustering results with markers
    - Supervised classification

- Module 4: méthodes et outils bioinformatiques ? To check with Olivier and Olivier. 

- Module 6 - Integrative bioinformatics
    - multi-level factorisation of multi-omics data

 
