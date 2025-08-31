## Group variables
They are variables assigned to an inventory group, so that all hosts in that group automatically inherit those values.
Inventory file holds two groups like

        [dev]
        devserver1 ansible_host=192.168.1.10
        
        [prod]
        prodserver1 ansible_host=192.168.1.20

Now variables in the group_vars/dev.yml will be used by dev group in inventory, just like that varables in group_vars/prod.yml will be used by servers in prod group in inventory.

## j2 extention for the shell script file

    .j2 = Jinja2 Template File

Ansible uses the Jinja2 templating engine to dynamically generate files or content. Files ending in .j2 are treated as templates where variables, loops, and conditionals can be used.

