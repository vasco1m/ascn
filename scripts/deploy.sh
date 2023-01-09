#!/bin/sh

ansible-playbook -i inventory/gcp.yml deploy-ghost.yml 
