# Mark-4
Yaml syntex link for reference
~~~
https://docs.ansible.com/ansible/latest/reference_appendices/YAMLSyntax.html
~~~

ansible playbook for installing, starting
### To run the playbook
~~~
ansible-playbook -i <inventory_file>  <playbook.yml file>
~~~
### To manualy run a commands
~~~
ansible -i <inventory_file> all -m  "shell" -a "touch dev"
~~~

### Idempotency in ansible

**idempotency** : it means doing something once has the same effect as doing it multiple times. it is the crucial part of ansible. As Running a playbook multiple times will always result in the same system state — without making unnecessary changes after the first successful run.

EX: when we are installing a package
~~~
- name: Ensure nginx is installed
  ansible.builtin.yum:
    name: nginx
    state: present
~~~

- first run will install nginx (Changed = 1)
- next runs will do no actions (Changed = 0)

**NOTE** : it is module dependent , as in if we are using build in ansible modules then they are idempotent. but if we use raw commands & shell tasks then idempotency is not guaranteed.

# ans-mark-4.1
To install,run,and checking status of nginx on ec2 instance

The server is placed in inventory file and ssh connectivity should be in place between those two servers.

# ans-mark-4.3

To install apache 2 web service in the ubuntu instance

we will also install, run, launch and simple html web page 

# ans-mark-4.4

launch an ec2 and connect with that instance with shared "Key pair assigned at launch" and with ansible. we will install and configure mysql db in it.

First we update the instance, then install mysql, and we install python3 in virtual env and install build dependeces for sqlcli

# ans-mark-4.5

launch an ec2 and connect with that instance with shared "Key pair assigned at launch" and with ansible. To install jenkins and docker in it.

First we update the instance, then install java-17 which is required for jenkins to run then we will continue installing jenkins, and then we install dependencies, download and install docker 

Now we can run both the jenkins and docker at the end, and get the versions as validation.

 
