## Remote Hooks

Used for server side tasks, a way to [customize git](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks).

* Code quality
* Deployment

> Like many other Version Control Systems, Git has a way to fire off custom
> scripts when certain important actions occur. There are two groups of these
> hooks: client-side and server-side. Client-side hooks are triggered by
> operations such as committing and merging, while server-side hooks run on
> network operations such as receiving pushed commits. You can use these hooks
> for all sorts of reasons.

### Examples from the real-world

* Heroku
* [git-push workflows for k8s](https://www.youtube.com/watch?v=gDGT4Gf_4JM)
* The deployer [@UBL](http://ub.uni-leipzig.de/), allows to tag, push and deploy a complex PHP/MySQL web application

Gitlab offers webhooks, allows to listen for various payloads.

* An example for a [push
  payload](https://github.com/miku/span/blob/05cb13b8e328a03a53fc59d68b82051168c2246e/cmd/span-webhookd/main.go#L192-L249)
  (in Go), used for a simple index analysis task.

### At UBL

Example for automatic deployment [@UBL](http://ub.uni-leipzig.de/): [autoconfig](https://github.com/ubleipzig/autoconfig).