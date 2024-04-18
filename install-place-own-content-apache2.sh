Requirment:
Install apache2  in all managed nodes, Place our own content in default homepage

$ cd playbooks
$ vim playbook4.yml

--------------------------------------------------------------------------------------

---
- name: configuring apache2
  hosts: all
  tasks:
   - name: Install apache2
     apt:
      name: apache2
      state: present

------------------------------------------------------------------------------------

Save and quit

$ ansible-playbook  playbook4.yml  -b

To check apache2 is installed
$ ssh 172.31.12.239

( Homepage of apache2 is present in /var/www/html )

$ cd  /var/www/html 
$ ls

we get index.html  ( this html file is default homepage of apache )
Editing the index.html page
This is possible using copy module.