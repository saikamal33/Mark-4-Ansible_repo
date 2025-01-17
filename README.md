# Mark-4
ansible playbook for installing, starting, and checking status of nginx.

# To run the playbook
ansible-playbook -i <inventory_file>  <playbook.yml file>

# To manualy run a commands

ansible -i <inventory_file> all -m  "shell" -a "touch dev"
