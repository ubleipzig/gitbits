## Workflows

* merge
* rebase

More structured approaches:

* [git-flow](https://github.com/nvie/gitflow), [harmful?](https://www.endoflineblog.com/gitflow-considered-harmful)

Some critics:

> The absolutely worst part of GitFlow is this advice: `git merge --no-ff myfeature`

> This paragraph alone caused more damage than the other parts of the article
> combined. Because of this "advice" (which is presented as some absolute and
> obvious truth, when in fact it's nothing more than an opinion-based
> convention, and an unpopular one at that), the history of a project managed
> using GitFlow for some time invariably starts to resemble a giant ball of
> spaghetti.

## Workflows will be project dependent

The [finc](https://finc.info) project [@UBL](http://ub.uni-leipzig.de/) utilizes git branches to:

* separate work on each issue/feature
* separate instances (alpha, staging, production with varying configurations)
* separate tenants (we host services for [about twenty
  institutions](https://finc.info/de/anwender)), each one with slightly custom requirements

Tooling around hooks allows to automatically deploy (and undeploy)
[LAMP-Application](https://vufind.org/vufind/).

Another [metadata project](https://github.com/ubleipzig/siskin/commits/master)
is organized more linearly.


