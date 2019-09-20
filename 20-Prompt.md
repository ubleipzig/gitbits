## Prompt playsi

Spice up your prompt. Saves you an occasional git status. There are many versions:

* [git-prompt.sh](https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh)
* [zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt)
* [bash-git-prompt](https://github.com/magicmonty/bash-git-prompt)

### vcprompt

A standalone C program - [vcprompt](https://bitbucket.org/gward/vcprompt/src/default/).

> vcprompt is a little C program that prints a short string with
barebones information about the current working directory for various version
control systems. You configure your shell to include the output of vcprompt in
your prompt, and you get version control information in your prompt.

> vcprompt is designed to be small and lightweight rather than
comprehensive. Currently, it has varying degrees of support for Mercurial, Git,
Subversion, CVS, and Fossil working copies.

> vcprompt has minimal dependencies: it does as much as it can with the
standard C library and POSIX calls. It should work on any POSIX-compliant
system with a C99 compiler. Some optional features require external libraries
(see "Dependencies" below).

![](static/vcprompt.png)

You can modify your
[PS1](http://www.gnu.org/savannah-checkouts/gnu/bash/manual/bash.html#Bourne-Shell-Variables)
to run include `vcprompt` output (here's a [snippet](https://raw.githubusercontent.com/ubleipzig/gitbits/master/snippets/vcprompt.bash)).

```shell
fancyprompt ()
{
    # Check if vcprompt is available.
    command -v vcprompt > /dev/null 2>&1;
    if [ $? -eq 0 ]; then
        export PS1="\u@\h:\w \[$COLOR256_130\]\$(vcprompt -f '[%n:%b%u%m] ')\[$RESET\]\$ ";
    else
        defaultprompt;
    fi
}

defaultprompt ()
{
    export PS1='\u@\h:\w $ '
}
```
