# 10mistakes

10 common mistakes that could ruin your enrichment analysis:

1. Using uncorrected p-values
2. Not using a background list
3. Using a tool that doesn't report enrichment scores
4. Prioritising results solely by p-values
5. Using gene lists that are too large or too small
6. Combining up and down-regulated genes in the same ORA test
7. Using shallow gene annotations
8. Using outdated gene identifiers and gene sets
9. Bad presentation
10. Neglecting methods reproducibility

## Contents

* `10mistakes.bib`: Bibliography

* `Dockerfile`: Dockerfile

* `analysis.Rmd`: Main analysis script

* `f1000research.csl`: Citation style file

* `manuscript.Rmd`: Manuscript file

## How to reproduce

Start a container

```
docker run -it mziemann/10mistakes:latest
```

Once in the container, pull the latest code.

```
git stash && git pull
```

Now the two R scripts can be run to conduct the analysis and generate the manuscript.

```
Rscript -e 'rmarkdown::render("analysis.Rmd")'

Rscript -e 'rmarkdown::render("manuscript.Rmd")'
```

Copy the data back to the host.

```
docker cp $(docker ps -alq):/10mistakes docker_data
```

Now the html files and figures can be inspected in the `docker_data` folder.
