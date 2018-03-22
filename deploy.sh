#!/bin/bash

# Exit on any error
set -e

sudo gcloud docker push us.gcr.io/${PROJECT_ID}/go_sample
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
kubectl patch deployment docker-hello-google -p '{"spec":{"template":{"spec":{"containers":[{"name":"docker-hello-google","image":"us.gcr.io/ci-sample-198806/go_sample:'"$CIRCLE_SHA1"'"}]}}}}'
