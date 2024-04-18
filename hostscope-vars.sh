 Variables to work on single hosts

Variables to work on single hosts
These variables  are designed on single machine.
Thet are created in folder called host_wars
This host_wars folder should be created in the same location of 
where the playbooks are present.

-----------------------------------------------------------------------------------------------------------

playbooks$ mkdir host_vars
$ cd host_vars
$ vim 172.31.39.81        ( 172.31.39.81  private Ip of server4 )

-----------------------------------------------------------------------------------------------------------

a: firewalld
b: present
c: yes

save and quit
$ cd ..
$ vim playbook10.yml

-----------------------------------------------------------------------------------------------------------

---
- name: Use host scope variables
  hosts: 172.31.6.241
  tasks:
   - name: Install firewall
     apt:
      name: "{{a}}"
      state: "{{b}}"
      update_cache: "{{c}}"
...

-----------------------------------------------------------------------------------------------------------
save and quit

$ ansible-playbook  playbook10.yml  -b