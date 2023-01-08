#!/bin/bash

ansible-playbook -i inventory/gcp.yml deploy-ghost.yml 
