#!/bin/bash



gcloud compute instances create talos-controlplane \
    --project=dekeijzer-xyz \
    --zone=eu-west4-a \
    --machine-type=e2-medium \
    --network-interface=network-tier=PREMIUM,stack-type=IPV4_ONLY,subnet=default \
    --no-restart-on-failure \
    --maintenance-policy=TERMINATE \
    --provisioning-model=SPOT \
    --instance-termination-action=DELETE \
    --max-run-duration=7200s \
    --service-account=271841724064-compute@developer.gserviceaccount.com \
    --scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append \
    --create-disk=auto-delete=yes,boot=yes,device-name=talos-1,image=projects/dekeijzer-xyz/global/images/talos-omni,mode=rw,size=10,type=pd-balanced \
    --labels=goog-ec-src=vm_add-gcloud \
    --reservation-affinity=any

