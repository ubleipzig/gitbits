# Generic makefile to analyze a git repository and generate some plots.
REPO = $(HOME)/go/src/github.com/containerd/containerd



.PHONY: analyze all

all: analyze
	git-of-theseus-stack-plot --outfile authors.png authors.json
	git-of-theseus-stack-plot --normalize --outfile authorsnorm.png authors.json
	git-of-theseus-stack-plot --outfile exts.png exts.json
	git-of-theseus-stack-plot --outfile cohorts.png cohorts.json
	git-of-theseus-survival-plot --outfile survival.png survival.json

analyze:
	git-of-theseus-analyze $(REPO)

