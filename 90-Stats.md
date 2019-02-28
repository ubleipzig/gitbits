## 9. Stats

Install git-extras to get a few additional tools. Here, git summary on git:

```
$ git summary

 project  : git
 repo age : 14 years
 active   : 4788 days
 commits  : 54455
 files    : 3533
 authors  :
 20215  Junio C Hamano                  37.1%
  3047  Jeff King                       5.6%
  1612  Nguyễn Thái Ngọc Duy            3.0%
  1401  Shawn O. Pearce                 2.6%
  1324  Johannes Schindelin             2.4%
  1116  Linus Torvalds                  2.0%
   954  Michael Haggerty                1.8%
   842  René Scharfe                    1.5%
   819  Jonathan Nieder                 1.5%
   614  Stefan Beller                   1.1%
   569  Ævar Arnfjörð Bjarmason         1.0%
   547  Christian Couder                1.0%
   545  Eric Wong                       1.0%

```

### Git-of-Theseus

Have you heard of git-of-theseus?

![](static/theseusmin_22083.png)


```shell
$ pip install git-of-theseus
$ git-of-theseus-analyze .
...
Counting total entries to analyze + caching filenames
Analyzing commit history
100% (1488 of 1488) |
...
Writing cohort data to ./cohorts.json
Writing ext data to ./exts.json
Writing author data to ./authors.json
Writing survival data to ./survival.json
```

Create stack or survival plots:

```
$ git-of-theseus-stack-plot authors.json
$ open stack_plot.png
```

Some random github repo (here: [https://github.com/containerd/containerd](https://github.com/containerd/containerd))

### Authors

![](static/got-containerd/authors.png)

![](static/got-containerd/authorsnorm.png)

### Code cohorts

![](static/got-containerd/cohorts.png)

### File extensions

![](static/got-containerd/exts.png)

### Code survival

![](static/got-containerd/survival.png)

### Example from another project at [@UBL](http://ub.uni-leipzig.de/):

* [Cohorts](https://github.com/miku/siskin/blob/master/docs/repo/cohorts.png)
  for project [siskin](https://github.com/miku/siskin).