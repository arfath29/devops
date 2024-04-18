---
- name: configuring apache2
  hosts: all
  tasks:
   - name: Install apache2
     apt:
      name: apache2
      state: present
   - name: Edit index.html file
     copy:
      content: "Welcome to playbooks\n"
      dest: /var/www/html/index.html
   - name: Restart apache2
     service:
      name: apache2
      state: restarted
   - name: check url response of server1
     uri:
      url: http://172.31.7.134
      status: 200
   - name: check url response of server2
     uri:
      url: http://172.31.3.46
      status: 200
   - name: check url response of server3
     uri:
      url: http://172.31.2.140
      status: 200
...

----------------------------------------------------------------------------

 ansible-playbook  playbook4.yml  -b


Notes:
Ex: Ansible playbook for configure apache2