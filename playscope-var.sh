Notes:
Playscope variables
These variables are definied at level of individual plays and they can effect only one play.

Ex:

---------------------------------------------------------------------------------------------------

---
- name: Using play scope variable
  hosts: all
  vars:
   - a: tomcat8
   - b: present
   - c: no
  tasks:
   - name: Install tomcat8
     apt:
      name: "{{a}}"
      state: "{{b}}"
      update_cache: "{{c}}"
   - name: start tomcat service
      service:
       tomcat9:start
	   
...

--------------------------------------------------------------------------------------------------------

Note: The above playbook works like a template, who's default behaviour is to install tomcat8
But, we can by pass that behaviour and make it work in some other software by passing the variables as extra vars
