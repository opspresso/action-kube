# Kubernetes Builder

## Usage

```yaml
name: Kubernetes Builder

on: push

jobs:
  builder:
    runs-on: ubuntu-latest
    steps:
    - name: Checkout
      uses: actions/checkout@master
      with:
        fetch-depth: 1

    - name: kubectl
      uses: opspresso/action-kube@master
      with:
        args: kubectl get nodes

    - name: helm
      uses: opspresso/action-kube@master
      with:
        args: helm repo list
```
