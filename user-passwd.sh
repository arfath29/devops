Create user on all managed nodes and I want to copy passwd file.

$ vim playbook2.yml

-------------------------------------------------------------------------------------------------------

---
- name: Create user and copy passwd file
  hosts: all
  tasks:
          - name: User creation
            user:
             name: sami
             password: sami
             uid: 6779
             home: /home/kiran
          - name: Copy password into users home dir
            copy:
             src: /etc/passwd
             dest: /home/kiran
...

---------------------------------------------------------------------------------------------------------

Check the syntax:
ansible-playbook  playbook2.yml  --syntax-check

To run 
ansible-playbook  playbook2.yml  -b


 
TO check user is created in managed nodes:
ssh  172.31.2.173
vim /etc/passwd

To check  if passwd file is copied to  /home/kiran
cd /home/kiran
ls
exit

