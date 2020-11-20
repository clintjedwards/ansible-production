# Ansible: configuration management

Ansible is a tool used to manage the configuration of servers.

### Quick Command Reference

- Initialize a newly provisioned host

  `ansible-playbook -b -u ubuntu -i inventory -l pirate.clintjedwards.home playbooks/init.yml`

- Initialize multiple hosts

  `ansible-playbook -b -u ubuntu -i inventory -l "consul2.clintjedwards.home, consul3.clintjedwards.home" playbooks/init.yml`

- Running playbook on one host

  `ansible-playbook -b -u ubuntu -i inventory -l vault1.clintjedwards.home playbooks/someplaybook.yml`

- Running certain playbook on all hosts targeted in playbook

  `ansible-playbook -b -u ubuntu -i inventory playbooks/someplaybook.yml`

- Running all playbooks

  `ansible-playbook -b -u ubuntu -i inventory playbooks/vault-master.yml`

- Running a single command on certain hostgroups
  `ansible all -i inventory -a "sudo service rsyslog restart"`
  `ansible all -i inventory -a "sudo apt update"`

### **Warnings!!!**

### Notes

- Roles cannot have the same end name or else only one of them will run
  ex: `roles/nomad/minion` and `roles/consul/minion` in a single playbook will lead to only nomad/minion running and consul being skipped
