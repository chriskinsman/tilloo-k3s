# tilloo-k3s

This repository provides samples to deploy tilloo to a raspberry pi ubuntu arm64 based rancher k3s

1. Get a Raspberry PI/ubuntu based rancher k3s cluster ready to deploy tilloo
2. Deploy the tilloo job scheduler engine into that k8s cluster

## Getting Started

1. You need to have a base rancher k8s cluster up and running with at least two ubuntu arm64 nodes.  With some changes this can be made to run on raspbian with the exception of mongodb which doesn't have an arm7 image.
2. You will need to enesure that k3s is deployed using Docker not containerd.  Containerd doesn't support json log formats so the output from jobs will not be captured correctly.
3. ghcr.io/chriskinsman/tilloo:latest is a multi-architecture manifest that includes amd64, arm64, arm32v6, and arm32v7 images. 
4. You will need to add a /etc/hosts entry for tilloo.local.  This is due to the ingress using host headers.  If you hit it's cluster ip without a host header you will end up with a 404 not found.

Steps are intended to be run in numerical order.

