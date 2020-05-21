# 🧫 ♊  MetaProkka
**Modified version of Prokka by Torsten Seemann tailored for metagenome assemblies**

  [![Build Status](https://travis-ci.org/telatin/metaprokka.svg?branch=master)](https://travis-ci.org/telatin/metaprokka)
  [![Install with Conda](https://anaconda.org/bioconda/metaprokka/badges/installer/conda.svg)](https://bioconda.github.io/recipes/metaprokka/README.html)
  [![Downloads](https://anaconda.org/bioconda/metaprokka/badges/downloads.svg)](https://bioconda.github.io/recipes/metaprokka/README.html)

### Preamble

As a long time [Prokka](https://github.com/tseemann/prokka) user, I made some changes for the specific use for metagenomes. **Prokka**'s author will probably release a better replacement (called Mokka) in the future, so keep al look [here](https://github.com/tseemann/mokka).
This repository contains the altered script and its documentation, after experimenting with [this fork](https://github.com/telatin/prokka).

### Usage
```
metaprokka --outdir annotation --prefix S01 contigs.fasta
```

See the **[:book: Wiki](https://github.com/telatin/metaprokka/wiki)** for more details.

### Installation

If you already have Prokka, you can manually install:

```
wget -O "$(dirname $(command -v prokka))/metaprokka" \
  "https://github.com/telatin/metaprokka/blob/master/bin/metaprokka"
```

Otherwise you can install _metaprokka_ (and prokka) via Miniconda:

```
conda install -c bioconda metaprokka
```

Via Miniconda, creating a new environment:

```
conda create -n metaprokka metaprokka
```

### Changes

MetaProkka will produce less output files (to save space in big projects) and will skip some steps (notably tbl2asn).

See **[:scroll: Changes](https://github.com/telatin/metaprokka/wiki/Changes)** for more details.

### Citation

This tool is a modified version of Prokka, so if you use it please cite:

* Seemann T. **Prokka: rapid prokaryotic genome annotation**, Bioinformatics 2014 Jul 15;30(14):2068-9. [PMID:24642063](http://www.ncbi.nlm.nih.gov/pubmed/24642063)
