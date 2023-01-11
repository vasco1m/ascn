#!/bin/sh

ansible-playbook -i inventory/gcp.yml undeploy-ghost.yml $@
