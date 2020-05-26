# Study cases for the Diplôme Universitaire en Bioinformatique Intégrative ([DU-Bii](https://du-bii.github.io/accueil/))

## Table of contents

- [Introduction](#introduction)
- [Study case descriptions](#study-case-descriptions)
    - [Escherichia coli](#escherichia-coli)
    - [Arabidopsis thaliana](#arabidopsis-thaliana)
    - [Homo sapiens](#homo-sapiens)
- [Access](#access)
- [Local installation](#local-installation)
- [Credits](#credits)
- [License](#license)

## Introduction

This repository contains a description of the study cases used for the different courses of the Diplôme Universitaire en Bioinformatique Intégrative (DU-Bii) organised by the Université Paris-Diderot and the Institut Français de Bioinformatique (IFB). 


This includes:

- a description of the study cases;
- links to the reference publications and data sources;
- scripts enabling to download the data from its original sources;
- optionally, some small demo datasets derived from the raw data, in order to facilitate its use for the different courses of the diploma (Python, Unix, statistics with R, ...).

**Beware:** this repository should by no means not contain any massive data like the raw read files or mass spectrometry profiles.


## Study case descriptions

### Escherichia coli

- [Genomewide landscape of gene–metabolome associations](Escherichia_coli/genome-metabolome_fuhrer_2017/): mutations + metabolome

- [Bacterial regulons](Escherichia_coli/bacterial-regulons_myers_2013/): ChIP-seq + RNA-seq

- [Bacterial complete genome](Escherichia_coli/genome-sequence_allue-guardia_2019/): DNA-seq

### Arabidopsis thaliana

- **Strehmel et al. (2017).** 

    - Data types: Metabolomics and proteomics
    - Reference: Strehmel N, Hoehenwarter W, Mönchgesang S, Majovsky P, Krüger S, Scheel D, Lee
J. *Stress-Related Mitogen-Activated Protein Kinases Stimulate the Accumulation of
Small Molecules and Proteins in Arabidopsis thaliana Root Exudates*. Front Plant
Sci. 2017 Jul 21;8:1292. doi: 10.3389/fpls.2017.01292. eCollection 2017. PubMed
PMID: [28785276](https://www.ncbi.nlm.nih.gov/pubmed/?term=28785276); PubMed Central PMCID: [PMC5520323](https://europepmc.org/abstract/pmc/pmc5520323).
    - Article: <https://www.frontiersin.org/articles/10.3389/fpls.2017.01292/full>
    
- **Liang et al. (2016).** 

    - Data types: Transcriptomics, metabolomics and proteomics
    - Reference: Liang C, Cheng S, Zhang Y, Sun Y, Fernie AR, Kang K, Panagiotou G, Lo C, Lim BL. Transcriptomic, proteomic and metabolic changes in Arabidopsis thaliana leaves after the onset of illumination. BMC Plant Biol. 2016 Feb 11;16:43. doi: 10.1186/s12870-016-0726-3.
PubMed PMID: 26865323 PubMed Central PMCID: PMC4750186 Free access at BMC Plant Biology (https://europepmc.org/abstract/pmc/pmc4750186).
    - Article: <https://bmcplantbiol.biomedcentral.com/articles/10.1186/s12870-016-0726-3>


### Homo sapiens

- [The Cancer Genome Atlas (TCGA) selected subsets](Homo_sapiens/TCGA_study-case/)

### *Mus musculus*


- Pavkovic, M., Pantano, L., Gerlach, C.V. et al. Multi omics analysis of fibrotic kidneys in two mouse models. Sci Data 6, 92 (2019). 
    - <https://doi.org/10.1038/s41597-019-0095-5> 
    - <https://www.nature.com/articles/s41597-019-0095-5#citeas>
    - Mouse fibrotic kidney browser: <http://hbcreports.med.harvard.edu/fmm/>
    - Data on Zenodo: <https://zenodo.org/record/2592516>

- Data preparation scripts: [html](Mus_musculus/pavkovic_2019/Rmd/prepare-data_pavkovic_2019.html) [Rmd](Mus_musculus/pavkovic_2019/Rmd/prepare-data_pavkovic_2019.Rmd)


## Resources to get study cases


### Biostudies

Web: <https://www.ebi.ac.uk/biostudies/>

The BioStudies database holds descriptions of biological studies, links to data from these studies in other databases at EMBL-EBI or outside, as well as data that do not fit in the structured archives at EMBL-EBI. 

### Sci. data special issue on multi-omics data

Reference : Conesa, A., Beck, S. Making multi-omics data accessible to researchers. Sci Data 6, 251 (2019). <https://doi.org/10.1038/s41597-019-0258-4>. 
<https://www.nature.com/articles/s41597-019-0258-4>

Some, papers:

- Gomez-Cabrero, D., Tarazona, S., Ferreirós-Vidal, I. et al. STATegra, a comprehensive multi-omics dataset of B-cell differentiation in mouse. Sci Data 6, 256 (2019). 
    - <https://doi.org/10.1038/s41597-019-0202-7>
    - <https://www.nature.com/articles/s41597-019-0202-7>
    - STATegra data: <https://github.com/STATegraData/STATegraData>


- Stare, T., Ramšak, Ž., Križnik, M. et al. Multiomics analysis of tolerant interaction of potato with potato virus Y. Sci Data 6, 250 (2019). 
    - <https://doi.org/10.1038/s41597-019-0216-1>
    - <https://www.nature.com/articles/s41597-019-0216-1#citeas>
    - Data: <https://www.ebi.ac.uk/pride/archive/projects/PXD015221>
    - Data (FTP): <ftp://ftp.pride.ebi.ac.uk/pride/data/archive/2019/09/PXD015221>

### ProteomeXchange datasets


Vizcaíno, J., Deutsch, E., Wang, R. et al. ProteomeXchange provides globally coordinated proteomics data submission and dissemination. Nat Biotechnol 32, 223–226 (2014). 
    - <https://doi.org/10.1038/nbt.2839>
    - Datasets: <http://proteomecentral.proteomexchange.org/cgi/GetDataset>


- Ramus C, Hovasse A, Marcellin M, Hesse AM, Mouton-Barbosa E, Bouyssié D, Vaca 
S, Carapito C, Chaoui K, Bruley C, Garin J, Cianférani S, Ferro M, Dorssaeler AV, Burlet-Schiltz O, Schaeffer C, Couté Y, Gonzalez de Peredo A. Spiked proteomic standard dataset for testing label-free quantitative software and statistical methods. Data Brief. 2015 Dec 17;6:286-94. doi: 10.1016/j.dib.2015.11.063. eCollection 2016 Mar. PubMed PMID: 26862574; PubMed Central PMCID: PMC4706616.
    - PMID [26862574](https://www.ncbi.nlm.nih.gov/pubmed/26862574)
    - <http://proteomecentral.proteomexchange.org/cgi/GetDataset?ID=PXD001819>
    - Access on Pride: <https://www.ebi.ac.uk/pride/archive/projects/PXD001819>

## Access

- Github: <https://github.com/DU-Bii/study-cases>
- Web: <https://du-bii.github.io/study-cases/>

## Local installation

### For contributors (members of the team)

```{bash}
git clone git@github.com:DU-Bii/study-cases.git
```
### For non-members of the team

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

