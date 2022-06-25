#!/bin/bash

k3d cluster create "k3d-cluster" -p "80:80@loadbalancer" --volume /Users/johan/repos/personal/github/k3d-skaffold-demo/demo-app:/tmp/k3dvol

skaffold run --tail
