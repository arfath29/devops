 vim playbook11.yml

installing
--------------------------------------------------------
---
- name: Install software packages
  hosts: webserver
  tasks:
   - name: Install software
     apt:
      name: "{{item}}"
      state: present
      update_cache: no
     with_items:
      - tree
      - git
      - default-jdk
      - apache2
...

--------------------------------------------------------
vim playbook12.yml

installing,deleting,updating

--------------------------------------------------------

---
- name: Install software packages
  hosts: webserver
  tasks:
   - name: Install software
     apt:
      name: "{{item.a}}"
      state: "{{item.b}}"
      update_cache: "{{item.c}}"
     with_items:
      - {a: tree,b: present,c: no}
      - {a: git,b: absent,c: no}
      - {a: default-jdk,b: absent,c: no}
      - {a: apache2,b: present,c: yes}
...

--------------------------------------------------------
save and quit

$ ansible-playbook  playbook12.yml  -b


