Error Handling
-------------
If any module fails in ansible,the execution of the playbook terminates over there.
When we know that certain module might fail, and still we want to continue playbook execution, we can use error handling.
The section of code which might generate an error should be given in block section.
If it generates an error, the control comes to rescue section.
Always section is executed every time, irespective of whether the block is successfull or failure.
-----------------------------------------------------------------------------------------------------------------------------------------------
$ vim playbook15.yml

-----------------------------------------------------------------------------------------------------------------------------------------------

---
- name: Error handling
  hosts: all
  tasks:
   - block:
      - name: Install apache1
        apt:
         name: apache1
         state: present
     rescue:
      - name: Install apache2
        apt:
         name: apache2
         state: present
     always:
      - name: Check url response
        uri:
         url: "{{item}}"
        with_items:
         - http://172.31.7.134
         - http://172.31.3.46
         - http://172.31.2.140
         - http://172.31.6.241
...
-----------------------------------------------------------------------------------------------------------------------------------------------

$ ansible-playbook  playbook15.yml  -b
