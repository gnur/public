---
author: Erwin de Keijzer
date: YYYY-MM-dd
paging: KCD Budapest %d / %d
---

# TODO

- k9s intro
- kubectx
- kubens
- k9s :ctx
- k9s :foute deployment
- k9s :jq log

---
# Using k9s for maximum efficiency

- Erwin de Keijzer
- Principal Consultant @ TrueFullstaq (NL)
- Semi-Pro Yak Shaver
- https://dekeijzer.xyz

---
# an ode the CLI

- I'll only be using the CLI
- I've yak shaved this completely
- I'll tell you what most tools do as we go
- Last slide contains links to all projects mentioned and a QR code

---
# zellij

- terminal multiplexer
- allows floating windows
- with some config makes it behave like a native macOS app
- see my yak shaving series at `https://dekeijzer.xyz` for more info

---

# slides (cli)

- slides is CLI presentation tool
- it allows inline code blocks with execution
- actually a single markdown file
- this whole deck (and used yamls) is on github

---

# let's get a cluster going

These things tend to work better with an actual live demo. 

So let's create a Talos kubernetes cluster.

```bash
#!/bin/bash
///zellij action new-pane -f --width 90% --height 90% -x 5% -y 5% -- \
task up
```

---
# task/Taskfile & talos

## task

- task runner / build tool
- easier to use than Make
- yaml syntax
- just works most of the time

## talos

- minimal linux distro made 100% to run kubernetes
- immutable, API driven, secure
- the best way to run kubernetes (on prem)
- it only takes 3 minutes to launch a talos cluster on your laptop
    - we just saw that it is actually faster :)

---
# task / talos cont

```bash
#!/bin/bash
bat -r 0:20 Taskfile.yaml
```

---
# kubectl

- kube cee-tee-el
- kube control
- kube cuttle
- kube cuddle
- k
- or `k get pods` and why isn't `k` aliased in this shell to `kubectl` and why does this exam not have sane defaults in the shell

---
# kubectl #2

- `kubectl` is an extremely powerful tool
- also quite complicated
- even LLMs get it wrong
- as do I

---

# sc (smartcat)

- cli access to LLMs
- inline results

```bash
#!/bin/bash
sc 'how can I live tail all the logs of the jsonlogger deployment in de the default namespace with kubectl'
```

---
# sc (cont)

- `kubectl logs -f deployment/jsonlogger -n default --all-containers=true`
- is actually wrong
- only a singe pod
- should be `k logs -f deployment/jsonlogger -n --all-pods`

---
# k9s intro

`k9s` is a tui (terminal user interface) for kubernetes.

```bash
#!/bin/bash
///zellij action new-pane -f --width 90% --height 90% -x 5% -y 5% -- \
 k9s
```
---

# k9s basics

- VIM like movement (j/k)
- `:` for selecting the type of resource (pod / svc)
- `/` to search in the current display (realtime filter)
- possible actions are displayed in header

---

# k9s advanced

Filter based on labels

- `:pod state=good`
- `:deploy env=prod`

---

# k9s advanced

- plugins

```bash
#!/bin/bash
///zellij action new-pane -f --width 90% --height 90% -x 5% -y 5% -- \
bat plugins.yaml
```


---

# references

- https://k9scli.io/
- https://github.com/ahmetb/kubectx
- https://github.com/efugier/smartcat
- https://github.com/maaslalani/slides
- https://github.com/gnur/public/tree/main/2025-04-24-KCD-Budapest
- https://dekeijzer.xyz
- https://zellij.dev/
- https://taskfile.dev/
- https://www.talos.dev/
- https://www.linkedin.com/in/erwindekeijzer/

```bash
echo 'https://github.com/gnur/public/tree/main/2025-04-24-KCD-Budapest' | qrencode -t utf8
```
