## 7. Local hooks

Allow to run custom commands at various stages.

```
$ tree -sh .git/hooks/
.git/hooks/
├── [ 478]  applypatch-msg.sample
├── [ 896]  commit-msg.sample
├── [3.2K]  fsmonitor-watchman.sample
├── [ 189]  post-update.sample
├── [ 424]  pre-applypatch.sample
├── [1.6K]  pre-commit.sample
├── [1.3K]  pre-push.sample
├── [4.8K]  pre-rebase.sample
├── [ 544]  pre-receive.sample
├── [1.5K]  prepare-commit-msg.sample
└── [3.5K]  update.sample
```

Rename and make them executable - `chmod +x`.

There are a couple of use cases, often **code quality** related.

> In this article we'll see a great way to make sure you **never, ever commit
> code that has not been properly formatted**, using a little known but
> extremely powerful feature of Git

### Check git commit message format

> A friend at a company uses them, finds them annoying, but at least they try to
> follow a standard. I am undecided, some people [seem to
> care](https://stackoverflow.com/questions/1928023/how-can-i-prevent-subversion-commits-without-comments).

In an org with code-review, this is more vital, and will happen less.

### Static code checks

Do you know [pylint](https://github.com/PyCQA/pylint)?

> Pylint is a Python static code analysis tool which looks for programming
> errors, helps enforcing a coding standard, sniffs for code smells and offers
> simple refactoring suggestions.

> It's highly configurable, having special pragmas to control its errors and
warnings from within your code, as well as from an extensive configuration file.
It is also possible to write your own plugins for adding your own checks or for
extending pylint in one way or another.

* [pylint git hook](https://github.com/sebdah/git-pylint-commit-hook)

Static code checks happen on GitHub as well, better to catch things locally to
shorten discussions and make maintainers life easier.

### Running tests before commit

Forget to run tests, again? If you can put a test runner into a hook, you can
forget about it (via [Automate your workflow with git
hooks](https://medium.com/backticks-tildes/how-to-automate-your-git-workflow-with-git-hooks-c905296c49bc)).

