#!/bin/bash

ansible-playbook -i inventory/gcp.yml create-gke-cluster.yml
