# demo-chart

Very simple Helm chart to deploy the demo-app in local k3d-cluster, with Skaffold.

Using a deployment with a service to run the stateless app, and a persistent volume (and claim) to mount the source code, enabling reload on code change.

The chart also creates an ingress to make the app reachable via loadbalancer.