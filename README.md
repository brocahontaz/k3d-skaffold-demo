# k3d-skaffold-demo

Simple demo showing how a local kubernetes dev environment can be set up, using k3d, Skaffold and Helm.

The environment supports reload on code change as well as reaching the app through ingress routing.

## Running the demo
Run the demo by executing the start-script, `tools/skaffold/start.sh` in your shell.

## demo-app

Very simple nodejs app using express, to demonstrate running k3d with Skaffold.

Showing mounting of source code into pods, enjoying reload on code change.

Change some stuff in the code and watch the log output! :)

## demo-chart

Very simple Helm chart to deploy the demo-app in local k3d-cluster, with Skaffold.

Using a deployment with a service to run the stateless app, and a persistent volume (and claim) to mount the source code, enabling reload on code change.

The chart also creates an ingress to make the app reachable via loadbalancer.
