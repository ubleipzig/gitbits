# Sample makefile snippet to analyze a git repository and generate some plots.
# git-of-theseus-analyze must be installed: $ pip install git-of-theseus

# Set path to repo to analyze or override via `make REPO=path/to/repo`
REPO = $(HOME)/go/src/github.com/containerd/containerd

.PHONY: all
all: analyze
	git-of-theseus-stack-plot --outfile authors.png authors.json
	git-of-theseus-stack-plot --normalize --outfile authorsnorm.png authors.json
	git-of-theseus-stack-plot --outfile exts.png exts.json
	git-of-theseus-stack-plot --outfile cohorts.png cohorts.json
	git-of-theseus-survival-plot --outfile survival.png survival.json

.PHONY: analyze
analyze:
	git-of-theseus-analyze $(REPO)

# Generic makefile to analyze a git repository and generate some plots.
REPO = $(HOME)/go/src/github.com/containerd/containerd


