purl=Rscript -e "knitr::purl('$(1)', '$(2)', quiet=TRUE, documentation=0)"

rfiles:=$(patsubst vignettes/LP-%.Rmd,R/%-GEN.R,$(wildcard vignettes/LP-*.Rmd))

all: $(rfiles)

R/%-GEN.R: vignettes/LP-%.Rmd
	$(call purl,$^,$@)
