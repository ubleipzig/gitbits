# Git Love

Git is a lovely tool. This repo collects a few things I found useful.

Prepared for 2019-02-25, 12:30--13:30 meeting.

## TOC

1. Git is a toolkit and a key-value store
2. Prompt playsi
3. Config bits
4. Edit, Patch, Rebase
5. The Clash
6. Local hooks
7. The git push workflow (remote hooks)
8. Stats (cal, theseus)
9. Wrap up, Resources

----

## 1. git is a toolkit and a key-value store

Git is a collection of utilities, just a normal UNIX citizen.

![man git tab](static/man-git-tab.png)

* [https://git.kernel.org/pub/scm/git/git.git/about/](https://git.kernel.org/pub/scm/git/git.git/about/)

It became self-hosting within two weeks.

```shell
$ git clone https://git.kernel.org/pub/scm/git/git.git && cd git
$ git log --reverse | head -5
commit e83c5163316f89bfbde7d9ab23ca2e25604af290
Author: Linus Torvalds <torvalds@ppc970.osdl.org>
Date:   Thu Apr 7 15:13:13 2005 -0700

    Initial revision of "git", the information manager from hell

```

See: It's from hell and it started with a few hundred lines of C.

```shell
$ git reset --hard e83c5163316f89bfbde7d9ab23ca2e25604af290
HEAD is now at e83c516331 Initial revision of "git", the information manager from hell

$ tree -sh
.
├── [2.4K]  cache.h
├── [ 503]  cat-file.c
├── [4.0K]  commit-tree.c
├── [1.2K]  init-db.c
├── [ 957]  Makefile
├── [5.5K]  read-cache.c
├── [8.2K]  README
├── [ 986]  read-tree.c
├── [2.0K]  show-diff.c
├── [5.3K]  update-cache.c
└── [1.4K]  write-tree.c

0 directories, 11 files
```

Can we just build it today?

```shell
$ uname -sr # btw
Linux 4.20.6-arch1-1-ARCH

$ gcc --version
gcc (GCC) 8.2.1 20181127
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

Nah, two LIBS entries seem to be missing.

```shell
diff --git a/Makefile b/Makefile
index a6bba79ba1..aeb6d4b61a 100644
--- a/Makefile
+++ b/Makefile
@@ -8,7 +8,7 @@ all: $(PROG)
 install: $(PROG)
    install $(PROG) $(HOME)/bin/

-LIBS= -lssl
+LIBS= -lssl -lcrypto -lz

 init-db: init-db.o

```

The very first repo contained a seven executables already.

```
$ find . -maxdepth 1 -perm -111 -type f
./update-cache
./cat-file
./init-db
./write-tree
./show-diff
./read-tree
./commit-tree
```

Sun, 1 May 2005, [Quick git command
reference](https://lwn.net/Articles/134222/) - 29 commands.

You can add your own.

```shell
$ echo "bash -c 'echo Anything goes.'" > ~/bin/git-xyz && chmod +x ~/bin/git-xyz
$ git xyz
Anything goes.
```

> Git is a fast, scalable, distributed revision control system with an
> unusually rich command set that provides both high-level operations and full
> access to internals.

Welcome to the tour.

## 2. Prompt playsi

* XXX: vcprompt

## 3. Config bits

## 4. Edit, patch, rebase, clean

* git clean -fd

## 8. Stats



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

## 9. Wrap up, Resources

* [More git tips](https://github.com/git-tips/tips)
