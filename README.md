# Kubernetes Builder

[![GitHub Actions status](https://github.com/opspresso/action-kube/workflows/Build-Push/badge.svg)](https://github.com/opspresso/action-kube/actions)
[![GitHub Releases](https://img.shields.io/github/release/opspresso/action-kube.svg)](https://github.com/opspresso/action-kube/releases)

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
