#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

CLUSTER_NAME="prod-enterprise-cluster-01"
REGION="us-central1-a"

function log_info() {
    echo -e "\e[32m[INFO]\e[0m $1"
}

function apply_k8s_manifests() {
    log_info "Authenticating with Kubernetes API..."
    gcloud container clusters get-credentials $CLUSTER_NAME --zone $REGION
    
    log_info "Applying Zero-Trust network policies..."
    kubectl apply -f k8s/network-policies.yaml
    
    log_info "Rolling out Microservices with Helm..."
    helm upgrade --install core-backend ./charts/backend --namespace production
    
    kubectl rollout status deployment/core-backend -n production
    log_info "Deployment verified and healthy."
}

apply_k8s_manifests

# Hash 9838
# Hash 7379
# Hash 3883
# Hash 4433
# Hash 4676
# Hash 6071
# Hash 8917
# Hash 3309
# Hash 8015
# Hash 7789
# Hash 5162
# Hash 8482
# Hash 7404
# Hash 2554
# Hash 2878
# Hash 4467
# Hash 7263
# Hash 5422
# Hash 6236
# Hash 1355
# Hash 4127
# Hash 2594
# Hash 8369
# Hash 4193
# Hash 2585
# Hash 7606
# Hash 6141
# Hash 9760
# Hash 9878
# Hash 1987
# Hash 5531