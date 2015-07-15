# Role Development and Testing


## Strategy

Development of roles can be categorized in the following ways:

* Standalone
* Dependent
* Multi-machine


### Standalone

Standalone roles can be developed in such a way that they do not require input from anything else to test their functionality.  They are supplied a set of sane defaults in their rolename/defaults/main.yml file.

Standalone roles are the fastest way to iterate and develop a role since they are self-contained units.

### Dependent

Dependent roles may need other roles to execute prior to functioning.  Those depedencies may be defined in sequence in the playbook role definition or in the rolename/meta/main.yml file.

### Multi-machine

Development of some roles may require multiple machines -- such as systems that operate as a cluster.  A multi-machine role can use both standalone and dependent type of roles.
 