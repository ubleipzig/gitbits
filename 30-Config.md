## Config bits

Many [examples](https://dotfiles.github.io/) on the web. Do not type out command, create aliases.

Example `$HOME/.gitconfig` file.

```ini
[user]
    name = Maxi Muster
    email = maxi@muster.com

[core]

    # Make `git rebase` safer on macOS
    # More info: <http://www.git-tower.com/blog/make-git-rebase-safe-on-osx/>
    trustctime = false

    # Prevent showing files whose names contain non-ASCII symbols as unversioned.
    # http://michael-kuehnel.de/git/2014/11/21/git-mac-osx-and-german-umlaute.html
    precomposeunicode = false

    # Speed up commands involving untracked files such as `git status`.
    # https://git-scm.com/docs/git-update-index#_untracked_cache
    untrackedCache = true

    # pager = less -FRSX
    # pager = diff-so-fancy | less --tabs=4 -RFX
    pager = less --tabs=4 -RFX
    editor = vim
    preloadindex = true
    fsyncobjectfiles = true
    compression = 9
    autoclrf = false

[alias]

    ll = log --pretty=oneline -n 20 --graph --abbrev-commit
    st = status
    ci = commit
    co = checkout
    br = branch
    hist = log --pretty=format:\"%h %ad | %s%d [%an]\" --graph --date=short
    charts = shortlog -sn
    todo = grep --heading --break --ignore-case -e ' FIX: *' -e ' TODO: *' -e ' XXX: *'
    contributors = shortlog --summary --numbered
    serve = !git daemon --reuseaddr --verbose --base-path=. --export-all ./.git
    ls-untracked = ls-files . --exclude-standard --others

[apply]

    # Detect whitespace errors when applying a patch
    whitespace = fix

[color]

    # Use colors in Git commands that are capable of colored output when
    # outputting to the terminal. (This is the default setting in Git ≥ 1.8.4.)
    ui = auto

[color "branch"]

    current = yellow reverse
    local = yellow
    remote = green

[color "diff"]

    meta = yellow bold
    frag = magenta bold
    old = red
    new = green

[color "status"]

    added = yellow
    changed = green
    untracked = cyan

[help]

    # Automatically correct and execute mistyped commands
    autocorrect = 1

[merge]

    # Include summaries of merged commits in newly created merge commit messages
    log = true

[push]

    default = simple
    followTags = true

[diff]

    renames = copies

[diff "pdf"]

    textconv = pdfinfo

[diff "bin"]

    textconv = hexdump -v -C

[instaweb]

    local = true
    httpd = webrick
    port = 1234
    browser = chromium

[url "git@github.com:"]
    insteadOf = gh:

[url "https://gist.github.com/"]
    insteadOf = gist:

[url "https://bitbucket.org/"]
    insteadOf = bb:

```
