-i=inventory
-m=module
-a=arguments
-b=root user

absent=uninstall
present=install
latest=upgrade


ansible-playbook  playbook1.yml  --syntax-check                               (checking syntax is correct or not)
ansible-playbook  playbook1.yml  -b                                           (to run playbook)
ansible  all  -m  apt -a 'name=tomcat8 state=absent  purge=yes' -b            (to uninstall)
ansible-playbook  playbook5.yml  --extra-vars "a=git b=absent c=no"  -b       (running playbook by passing variables)
