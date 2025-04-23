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

# slides (cli)

- slides is CLI presentation tool
- it allows inline code blocks with execution
- actually a single markdown file
- this whole deck (and used yamls) is on github


## code block
~~~
```
echo "hoi"
```
~~~

---

# let's get a cluster going

```bash
#!/bin/bash
///zellij action new-pane -f --width 90% --height 90% -x 5% -y 5% -- \
task up
```

---
# kubectl

- kube-control
- kube-cuttel
- k
- or `k get pods` and why isn't `k` aliased in this shell to `kubectl`


---
# kubectl #2

```bash
#!/bin/bash
///zellij action new-pane -f --width 90% --height 90% -x 5% -y 5% -- \
kubectl get pods -o wide -A
```
---
# kubectl #3

- `kubectl` is an extremely powerful tool
- also quite complicated
- even LLMs get it wrong

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
# slides plaatjes

```bash
imgcat screenshot.png
```

---

# references

- https://k9scli.io/
- https://github.com/ahmetb/kubectx
- https://github.com/efugier/smartcat
- https://github.com/maaslalani/slides
- https://github.com/gnur/public/tree/main/2025-04-24-KCD-Budapest
- https://dekeijzer.xyz
- https://www.linkedin.com/in/erwindekeijzer/

```bash
echo 'https://github.com/gnur/public/tree/main/2025-04-24-KCD-Budapest' | qrencode -t utf8
```
