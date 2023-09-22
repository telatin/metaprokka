# 🧫 ♊  MetaProkka: a fork for prokka, optimised for bacteriophages and metagenomes/metaviromes

[![MetaProkkaGV](https://github.com/telatin/metaprokka/actions/workflows/test.yaml/badge.svg)](https://github.com/telatin/metaprokka/actions/workflows/test.yaml)
[![Bioconda Downloads](https://img.shields.io/conda/dn/bioconda/metaprokka.svg?style=flat)](https://bioconda.github.io/recipes/metaprokka/README.html)

## Introduction

Whole genome annotation is the process of identifying features of interest
in a set of genomic DNA sequences, and labelling them with useful
information. Prokka is a software tool to annotate bacterial, archaeal and
viral genomes quickly and produce standards-compliant output files.

## Installation (WIP)

### 
If you use [Conda](https://conda.io/docs/install/quick.html)
you can use the [Bioconda channel](https://bioconda.github.io/):

```
conda create -n prokka-gv --only-deps -c bioconda prokka
conda activate prokka-gv
conda install -c bioconda prodigal-gv perl-fastx-reader
export PATH=$PWD/bin/
```

## Usage
Same as Prokka, but here's a simple example:
```
prokka-gv --hmms all_phrogs.hmm --outdir OUT_DIR --prefix PREFIX --locustag LOCUSTAG input.fa --cpus x
```

# Licence

[GPL v3](https://raw.githubusercontent.com/tseemann/prokka/master/doc/LICENSE.Prokka)

### Citation

This tool is a modified version of Prokka, so if you use it please cite:

* Seemann T. **Prokka: rapid prokaryotic genome annotation**, Bioinformatics 2014 Jul 15;30(14):2068-9. [PMID:24642063](http://www.ncbi.nlm.nih.gov/pubmed/24642063)


## Authors

This fork is maintained by Ryan Cook [@RyanCookAMR](https://twitter.com/RyanCookAMR) & Andrea Telatin [@telatin](https://twitter.com/telatin)
