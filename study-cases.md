# Study cases for the Diplôme Universitaire en Bioinformatique Intégrative ([DU-Bii](https://du-bii.github.io/accueil/))


## Description

Preparation of the study cases used for the different courses of the Diplôme Universitaire en Bioinformatique Intégrative (DU-Bii) organised by the Université Paris-Diderot and the Institut Français de Bioinformatique (IFB). 


This includes:

- a description of the study cases;
- links to the reference publications and data sources;
- scripts enabling to download the data from its original sources;
- optionally, some small demo datasets derived from the raw data, in order to facilitate its use for the different courses of the diploma (Python, Unix, statistics with R, ...).

**Beware:** this repository should by no means not contain any massive data like the raw read files or mass spectrometry profiles.

## Table of contents

### Escherichia coli

- [Genomewide landscape of gene–metabolome associations](Escherichia_coli/genome-metabolome_fuhrer_2017/): mutations + metabolome

- [Bacterial regulons](Escherichia_coli/bacterial-regulons_myers_2013/): ChIP-seq + RNA-seq

### Arabidopsis thaliana


### Homo sapiens

#### The Cancer Genome Atlas (TCGA) selected subsets

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
         - Laura will provide an additional file with the subtypes (<link_to_add>) + a script enabling to produce this subtype label based on the combination of these two markers (<study-cases/Human/SubAnnot.R>)
      

Use of this dataset:

- Module 3 - Statistical analysis with R:
    - Differential analysis
    - Clustering
    - Evaluation of classifications: compare clustering results with markers
    - Supervised classification

Question: the Ron Shamir dataset is pre-normalized. Should we also download (from Recount2) the raw counts?

- Module 4: méthodes et outils bioinformatiques ? To check with Olivier and Olivier. 



## Access

- Github: <https://github.com/DU-Bii/study-cases>
- Web: <https://du-bii.github.io/study-cases/>

## Installation


### Contributors (members of the teaching team)

```{bash}
git clone git@github.com:DU-Bii/study-cases.git
```
### Other people

```{bash}
git clone https://github.com/DU-Bii/study-cases.git
```


## Credits

- Jacques van Helden <Jacques.van-Helden@univ-amu.fr>
- Fabien Jourdan
- ... (to be updated)


## License

![](img/CC-BY-SA.png)


This content is released under the [Creative Commons Attribution-ShareAlike 4.0 ](https://creativecommons.org/licenses/by-sa/4.0/deed.en) (CC BY-SA 4.0) license. See the bundled [LICENSE](LICENSE.txt) file for details.

Ce contenu est mis à disposition selon les termes de la licence [Creative Commons Attribution - Partage dans les Mêmes Conditions 4.0 International](https://creativecommons.org/licenses/by-sa/4.0/deed.fr) (CC BY-SA 4.0). Consultez le fichier [LICENSE](LICENSE.txt) pour plus de détails.

