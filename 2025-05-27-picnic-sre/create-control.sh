#!/bin/bash

gcloud compute instances create control \
--project=overwinning \
--zone=europe-west4-b \
--machine-type=c4a-standard-1 \
--network-interface=network-tier=PREMIUM,nic-type=GVNIC,stack-type=IPV4_ONLY,subnet=default \
--maintenance-policy=MIGRATE \
--provisioning-model=STANDARD \
--service-account=614883777567-compute@developer.gserviceaccount.com \
--scopes=https://www.googleapis.com/auth/devstorage.read_only,https://www.googleapis.com/auth/logging.write,https://www.googleapis.com/auth/monitoring.write,https://www.googleapis.com/auth/service.management.readonly,https://www.googleapis.com/auth/servicecontrol,https://www.googleapis.com/auth/trace.append --create-disk=auto-delete=yes,boot=yes,device-name=control,image=projects/debian-cloud/global/images/debian-12-bookworm-arm64-v20250513,mode=rw,provisioned-iops=3060,provisioned-throughput=155,size=10,type=hyperdisk-balanced --no-shielded-secure-boot --shielded-vtpm --shielded-integrity-monitoring --labels=goog-ec-src=vm_add-gcloud --reservation-affinity=any && gcloud compute resource-policies create snapshot-schedule default-schedule-1 --project=overwinning --region=europe-west4 --max-retention-days=14 --on-source-disk-delete=keep-auto-snapshots --daily-schedule --start-time=15:00 && gcloud compute disks add-resource-policies control --project=overwinning --zone=europe-west4-b --resource-policies=projects/overwinning/regions/europe-west4/resourcePolicies/default-schedule-1