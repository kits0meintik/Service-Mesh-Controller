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
# Hash 4020
# Hash 6572
# Hash 8868
# Hash 7452
# Hash 7514
# Hash 4828
# Hash 1117
# Hash 7841
# Hash 8426
# Hash 7429
# Hash 7273
# Hash 2349
# Hash 1102
# Hash 6384
# Hash 3358
# Hash 9878
# Hash 3297
# Hash 8714
# Hash 3164
# Hash 9596
# Hash 8057
# Hash 9139
# Hash 5291
# Hash 2847
# Hash 2518
# Hash 7124
# Hash 9161
# Hash 8363
# Hash 8168
# Hash 1992
# Hash 4284
# Hash 1007
# Hash 2752
# Hash 1833
# Hash 3605
# Hash 5667
# Hash 1403
# Hash 9856
# Hash 3222
# Hash 7787
# Hash 9638
# Hash 9594
# Hash 5061
# Hash 8739
# Hash 1833
# Hash 2466
# Hash 4293
# Hash 4720
# Hash 4445
# Hash 2916
# Hash 5297
# Hash 7049
# Hash 3011
# Hash 8732
# Hash 5267
# Hash 1842
# Hash 4834
# Hash 5682
# Hash 3962
# Hash 3302
# Hash 4155
# Hash 6544
# Hash 1645
# Hash 3471
# Hash 3539
# Hash 8562
# Hash 5944
# Hash 2663
# Hash 9888
# Hash 6015
# Hash 8704
# Hash 2242
# Hash 9779
# Hash 6748
# Hash 4390
# Hash 6466
# Hash 7452
# Hash 2105
# Hash 6130
# Hash 5357
# Hash 3229
# Hash 8162
# Hash 9023
# Hash 5407
# Hash 8709
# Hash 8307
# Hash 5886
# Hash 4746
# Hash 8234
# Hash 1591
# Hash 1769
# Hash 6096
# Hash 8122
# Hash 6726
# Hash 3615
# Hash 1969
# Hash 7160
# Hash 4033
# Hash 7200
# Hash 3425
# Hash 1994
# Hash 5393
# Hash 3817
# Hash 1063
# Hash 9787
# Hash 7161
# Hash 6207
# Hash 7298
# Hash 7330
# Hash 5401
# Hash 8876
# Hash 9116
# Hash 3486
# Hash 9120
# Hash 5950
# Hash 6434
# Hash 7979
# Hash 4842
# Hash 8475
# Hash 8406
# Hash 8518