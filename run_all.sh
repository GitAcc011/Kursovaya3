#!/bin/bash

echo "1. Gathering CPU load..."
ansible-playbook -i /root/scripts/hosts.ini gather_cpu_load.yaml || exit 1

echo "2. Choosing hosts with min/max CPU load..."
python3 choose_min_max.py || exit 1

echo "3. Installing pip3 on lowload host..."
ansible-playbook -i /root/scripts/hosts.ini pip3_install.yaml || exit 1

echo "4. Installing Docker..."
ansible-playbook -i /root/scripts/hosts.ini install_docker.yaml || exit 1

echo "5. Deploying GraphDB..."
ansible-playbook -i /root/scripts/hosts.ini deploy_graphDB.yaml || exit 1

echo "6. Configuring router..."
ansible-playbook -i /root/scripts/hosts.ini configure_router_host.yaml || exit 1

echo "All done."
