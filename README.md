# Kursovaya3
Репозиторий курсового проекта с 3 курса ВУЗа

# Порядок выполнения плейбуков (команд)

ansible-playbook -i hosts.ini gather_cpu_load.yaml \n /n
python3 choose_min_max.py
ansible-playbook -i hosts.ini pip3_install.yaml
ansible-playbook -i hosts.ini install_docker.yaml
ansible-playbook -i hosts.ini deploy_graphDB.yaml
ansible-playbook -i hosts.ini configure_router_host.yaml

ЛИБО выполнить Bash-скрипт
./run_all.sh

