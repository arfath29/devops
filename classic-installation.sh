mkdir  playbooks
cd playbooks
vim playbook1.yml

-----------------------------------------------------------------------

---
- name: Install git and clone a remote repository
  hosts: all
  tasks:
    - name: Install git
      apt:
       name: git
       state: present
       update_cache: yes
    - name: clone remote git repository
      git:
        repo: https://github.com/samiuddin-imaad/maven
        dest: /home/ubuntu/newgit  	
...

----------------------------------------------------------------------

To check the syntax:
ansible-playbook  playbook1.yml  --syntax-check

( Do not use tab  when creating yml file )

To run the playbook
ansible-playbook  playbook1.yml  -b


