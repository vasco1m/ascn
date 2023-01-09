#!/bin/sh

ansible-playbook -i inventory/gcp.yml create-gke-cluster.yml
