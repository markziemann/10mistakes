#!/bin/bash
# GTF file to gene table
grep -v ^# gencode.v49.chr_patch_hapl_scaff.annotation.gtf \
| awk '$3=="gene"' | cut -f9 | sed 's/gene_name/\ngene_name/' \
| cut -d ';' -f1 | sed 's/gene_id//' | sed 's/gene_name//' \
| tr -d ' "' | cut -d '.' -f1 \
| paste - - > gencode.v49.genenames.tsv
