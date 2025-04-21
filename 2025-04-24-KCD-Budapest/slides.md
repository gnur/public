---
author: Erwin de Keijzer
date: YYYY-MM-dd
paging: KCD Budapest %d / %d
---

# Using k9s for maximum efficiency

- Erwin de Keijzer
- Principal Consultant @ TrueFullstaq (NL)
- Semi-Pro Yak Shaver
- https://dekeijzer.xyz
---

# let's get a cluster going

```bash
///zellij action new-pane -f -- \
 task up
```


---
# kubectl

- kube-control
- kube-cuttel
- k
- or `k get pods` and why isn't k aliased in this shell


---
# kubectl #2

```bash
///zellij action new-pane -f -- \
    kubectl get pods -o wide -n kube-system
```

---
# 
