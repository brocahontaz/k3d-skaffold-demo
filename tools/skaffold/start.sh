#!/bin/bash

function finish () {
  k3d cluster delete k3d-cluster
}

trap finish EXIT

DIR=$(pwd)
PROJECT_DIR=${DIR%/*/*}
APP_DIR=$PROJECT_DIR/demo-app

echo $APP_DIR

k3d cluster create k3d-cluster -p "80:80@loadbalancer" --volume $APP_DIR:/tmp/k3dvol

skaffold run --tail
