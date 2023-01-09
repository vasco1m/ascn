#!/bin/sh

ansible-playbook -i inventory/gcp.yml destroy-gke-cluster.yml
