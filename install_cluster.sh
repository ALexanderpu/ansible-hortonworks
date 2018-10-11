#!/usr/bin/env bash

export CLOUD_TO_USE=static

source $(dirname "${BASH_SOURCE[0]}")/set_cloud.sh

ansible-playbook -i "inventory/${cloud_to_use}" -e "cloud_name=${cloud_to_use}" playbooks/install_cluster.yml --user=bo --extra-vars "ansible_sudo_pass=UofScs_2018"
