# 🧫 ♊  MetaProkka
### a fork for Prokka, optimised for bacteriophages and metagenomes/metaviromes

[![MetaProkkaGV](https://github.com/telatin/metaprokka/actions/workflows/test.yaml/badge.svg)](https://github.com/telatin/metaprokka/actions/workflows/test.yaml)
[![Bioconda Downloads](https://img.shields.io/conda/dn/bioconda/metaprokka.svg?style=flat)](https://bioconda.github.io/recipes/metaprokka/README.html)

## Introduction

Whole genome annotation is the process of identifying features of interest
in a set of genomic DNA sequences, and labelling them with useful
information. Prokka is a software tool to annotate bacterial, archaeal and
viral genomes quickly and produce standards-compliant output files.

## Installation (WIP)

### 
If you use [_Conda_](https://conda.io/docs/install/quick.html) (or _mamba_)
you can use the [Bioconda channel](https://bioconda.github.io/):

```bash
mamba install -c conda-forge -c bioconda metaprokka
```

## Usage

### prokka-gv

Prokka with prodigal-gv is called `prokka-gv`, this is particularly useful for
phage genomes (and will detect the genetic code).

You can download the Phrogs HMM, which will be automatically placed in the conda
folder.

```bash
get-phrogs
```

and then run `prokka-gv` (which will detect the Phrogs HMM):

```bash
prokka-gv --outdir OUT_DIR --prefix PREFIX --locustag LOCUSTAG --cpus 16 input.fa 
```

### metaprokka

Metaprokka is optimised for metagenomes, is better suited at fragmented assemblies
and will produce less output files (see wiki)

# Licence

[GPL v3](https://raw.githubusercontent.com/tseemann/prokka/master/doc/LICENSE.Prokka)

### Citation

This tool is a modified version of Prokka, so if you use it please cite:

* Seemann T. (2014) [Prokka: rapid prokaryotic genome annotation]((http://www.ncbi.nlm.nih.gov/pubmed/24642063)), Bioinformatics  
* Camargo, A. P., et al. (2023). [Identification of mobile genetic elements with geNomad](https://www.nature.com/articles/s41587-023-01953-y). Nature Biotechnology
* Cook R., et al. (2024), [Driving through stop signs: predicting stop codon reassignment improves functional annotation of bacteriophages](https://doi.org/10.1093/ismeco/ycae079), ISME Communications 


## Authors

This fork is maintained by Ryan Cook [@RyanCookAMR](https://twitter.com/RyanCookAMR) & Andrea Telatin [@telatin](https://twitter.com/telatin)
