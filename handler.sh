Handler is a piece of code which is executed, if some other module is executed successfully and it has made some changes.

Handlers are always executed only after all the tasks are executed.
Handlers are executed in the order that are mentioned in the handler section,
and not in the order they are called in the tasks section.
Even if handler is called multiple times in the tasks section, it will be executed only once.

Requirement:



$ vim playbook14.yml

--------------------------------------------------------------------------------------------------------------

---
- name: Confugure apache2 using handlers
  hosts: all
  tasks:
   - name: Install apache2
     apt:
      name: apache2
      state: present
   - name: Edit index.html file
     copy:
      content: "Logiclabs\n"
      dest: /var/www/html/index.html
     notify: Restart apache2
  handlers:
   - name: Restart apache2
     service:
      name: apache2
      state: restarted
...

--------------------------------------------------------------------------------------------------------------

$ ansible-playbook  playbook14.yml  -b

Note:
As editing the index.html file is successfull, handler is executed.