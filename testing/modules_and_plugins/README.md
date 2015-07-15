# Testing custom Ansible plugins and modules

For each custom module / plugin, there should be a Ansible playbook demonstrating it's functionality.

## Module testing

All modules have a test playbook that tests CRUD operations with all parameters. The test playbook should use the assert module to test that configured state is in fact the desired state.

## Filter testing

For each custom filter, a playbook should assert module to assert that the desired output of the filter was returned.