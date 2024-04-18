 Playbook to configure tomcat8   ( earlier  example )

1st uninstall tomcat
$ ansible  all  -m  apt -a 'name=tomcat8 state=absent  purge=yes'  -b

$ vim playbook3.yml

----------------------------------------------------------------------------------------------------

---
- name: Configure  tomcat9
  hosts: all
  tasks:
   - name: Install tomcat9
     apt:
      name: tomcat9
      state: present
   - name: copy tomcat-users.xml file
     copy:
      src:  /home/ubuntu/tomcat-users.xml
      dest: /etc/tomcat9
   - name: change port of tomcat from 8080 to 9090
     replace:
      regexp: 8080
      replace: 9090
      path: /etc/tomcat8/server.xml
   - name: restart tomcat9
     service:
      name: tomcat9
      state: restarted
   - name: check url response of server 1
     uri:
      url: http://172.31.10.15:9090
   - name:   check url response of server 2
     uri:
      url: http://172.31.3.15:9090
...


---------------------------------------------------------------------
ansible-playbook  playbook3.yml  --syntax-check
ansible-playbook  playbook3.yml  -b
