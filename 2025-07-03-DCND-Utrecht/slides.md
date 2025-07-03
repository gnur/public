---
author: Erwin de Keijzer
date: TrueFullstaq YYYY-MM-dd 
paging: Dutch Cloud Native Day Utrecht %d / %d
---
# Using k9s for maximum efficiency

- Erwin de Keijzer
- Principal Consultant @ TrueFullstaq
- Hobby Backend Developer (Go, Python, typescript)
- Reluctant Frontend Developer (nuxt, vue, tailwindcss)
- Semi-Pro Yak Shaver
- https://dekeijzer.xyz

---
# an ode the CLI

- I'll only be using the CLI
- Last slide contains links to all projects mentioned and a QR code

---

# slides (cli)

- slides is CLI presentation tool
- it allows inline code blocks with execution
- actually a single markdown file
- this whole deck (and used yamls) is on github

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

# kubectx

- `kubectl config use-context <context>`
- `kubectx` or `kctx` with proper alias :)

---
# k9s intro

`k9s` is a tui (terminal user interface) for kubernetes.

---

# k9s basics

- VIM like movement (j/k/gg/G)
- `:` for selecting the type of resource (pod / svc)
- `/` to search in the current display (realtime filter)
- `J` to jump to parent of currently selected item
- possible actions are displayed in header

---

# k9s advanced

Filter based on labels

- `:pod state=good`
- `:deploy env=prod`

---

# k9s advanced

- plugins.yaml
- stored in `~/Library/Application Support/k9s` for macOS

---
# k9s obscure

- use `:pulse` to have a dashboard kind if view of what is going on
- use `:xray pod/deploy` to have a tree view of pod / deployments
- use `/<query>` in log view to filter your logs

---

# references

- https://k9scli.io/
- https://carapace.sh/
- https://github.com/ahmetb/kubectx
- https://github.com/efugier/smartcat
- https://github.com/maaslalani/slides
- https://github.com/gitui-org/gitui
- https://dekeijzer.xyz
- https://zellij.dev/
- https://taskfile.dev/
- https://www.talos.dev/
- https://atuin.sh/
- https://www.linkedin.com/in/erwindekeijzer/
- https://www.truefullstaq.com/nl/events/edgecase-2025

```bash
echo 'https://github.com/gnur/public/tree/main/2025-07-03-DCND-Utrecht' | qrencode -t utf8
```
