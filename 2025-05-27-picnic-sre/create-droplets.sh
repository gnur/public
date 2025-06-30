#!/bin/bash

function log {
  echo "$(date +%T) > $*"
}

DO_PROJECT=0b4351ed-ce7f-4cda-841b-108621869961

log "Creating worker 3"
doctl compute droplet create --ssh-keys 47945454 --size s-2vcpu-4gb --region ams3 --image ubuntu-24-04-x64 --project-id $DO_PROJECT --user-data-file add-worker.sh do-worker-03

log "Creating worker 1"
doctl compute droplet create --ssh-keys 47945454 --size s-2vcpu-4gb --region ams3 --image ubuntu-24-04-x64 --project-id $DO_PROJECT --user-data-file add-worker.sh do-worker-03

DO_PROJECT=3c3f6dea-afe8-4b74-bb7f-5bb116e8e434

log "Creating worker 4"
doctl compute droplet create --ssh-keys 47945454 --size s-2vcpu-4gb --region fra1 --image ubuntu-24-04-x64 --project-id $DO_PROJECT --user-data-file add-./ad.sh do-worker-04
log "Creating worker 2"
doctl compute droplet create --ssh-keys 47945454 --size s-2vcpu-4gb --region fra1 --image ubuntu-24-04-x64 --project-id $DO_PROJECT --user-data-file add-worker.sh do-worker-04


log "Done"