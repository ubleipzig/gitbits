## Objects

```
$ git clone https://git.kernel.org/pub/scm/git/git.git
Cloning into 'git'...
remote: Counting objects: 264653, done.
remote: Compressing objects: 100% (63215/63215), done.
Receiving objects:  10% (26797/264653), 9.75 MiB | 1.65 MiB/s
```

### Objects anyone?

```
... objects
```

Four different kinds of objects:

* blob
* tree
* commit
* tag

Listing all objects:

```
$ git rev-list --objects --all | head
93261209c00a808bba172f3b3a425765f180af2c
f09ad664505d66643a151851aa987add29db1009
f37a814eb0a540c00cd9ac30e172e5614d168044
d1f0b67be25009a4e776060efab9a044da1a9d82
c550c30522ed81229396b8c2b906d8be3c5e1096
08777b883e60e352e34c9280049c20770f964d7e
307a0fe8a5bd34df7d940ef8b5c7a4fe3c85c4b0
91c92545c0e2a3cae272f89391527e99a1c00e5d
95da3a7f84fe9a0c4c96a7ff86d6dba83eb82915
566185735b54397d165cd04bc42a18ad9d3270de
```

Show object type:

```
$ git cat-file -t 82ac2a092c63735bf65a3379b4c1f2dc628e3e93
blob
```

Show object content:

```
$ git cat-file -p 82ac2a092c63735bf65a3379b4c1f2dc628e3e93 | head
#include "builtin.h"
#include "config.h"
#include "exec_cmd.h"
#include "help.h"
#include "run-command.h"

const char git_usage_string[] =
	"git [--version] [--help] [-C <path>] [-c name=value]\n"
	"           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]\n"
	"           [-p | --paginate | --no-pager] [--no-replace-objects] [--bare]\n"
```
