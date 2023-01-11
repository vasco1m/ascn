#!/bin/sh

ansible-playbook -i inventory/gcp.yml test-all.yml
