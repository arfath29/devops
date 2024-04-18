vim playbook5.yml

------------------------------------------------------------------------------------

---
- name: Install software packages
  hosts: all
  tasks:
   - name: Install/uninstall/update etc
     apt:
      name: "{{a}}"
      state: "{{b}}"
      update_cache: "{{c}}"
...

------------------------------------------------------------------------------------

To run the playbook  by passing values to the variables
$ ansible-playbook  playbook5.yml  --extra-vars "a=git b=absent c=no"  -b


( The above command will uninstall git from all nodes )

Run the same playbook with diffrent values
$ ansible-playbook  playbook5.yml  --extra-vars "a=tree b=present c=no"  -b
