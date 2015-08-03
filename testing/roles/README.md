# Role Development and Testing





Standalone roles can be developed in such a way that they do not require input from anything else to test their functionality.  They are supplied a set of sane defaults in their rolename/defaults/main.yml file.

Standalone roles are the fastest way to iterate and develop a role since they are self-contained units.

Role tests live in 

ansible_enterprise/roles/rolename/testing

and are comprised of a Vagrantfile and a playbook.


Role tests can be executed here by running the `test.sh` command.

`./test.sh -a` 

will run the role tests against all the roles detected.

You may also run the tests against any number of roles you specifiy on the command line:

`./test.sh apache haproxy`