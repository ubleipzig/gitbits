## Diff-so-fancy

The default is NICE, but can you spot the difference?

![](static/diff-default.png)

But we can get [FANCY](https://github.com/so-fancy/diff-so-fancy) as well (just
drop [this Perl
script](https://raw.githubusercontent.com/so-fancy/diff-so-fancy/master/third_party/build_fatpack/diff-so-fancy)
into your PATH and set the core.pager value to `pager = diff-so-fancy | less
--tabs=4 -RFX` or the like):

![](static/diff-fancy.png)

Dark themed:

![](static/diff-fancy-dark.png)

Side by side:

![](static/diff-so-fancy.png)
