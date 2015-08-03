# Integration Testing


## Strategy

Development of Ansible content can be categorized in the following ways:

* Dependent
* Multi-machine


### Dependent

Dependent roles may need other roles to execute prior to functioning.  Those depedencies may be defined in sequence in the playbook role definition or in the rolename/meta/main.yml file.

### Multi-machine

Development of some roles may require multiple machines -- such as systems that operate as a cluster.  A multi-machine role can use both standalone and dependent type of roles.
 