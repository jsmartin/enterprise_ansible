# Enterprise Ansible (Work in Progress)

## Goal

The goal of this is discuss and discover patterns that can be useful for those using Ansible in the enterprise.

This directory structure should account for:

* roles
* playbooks
* custom modules
* custom plugins
* testing and development of
  * roles
  * plugins
* inventory separation
  * dev
  * stage
  * prod
* building AMIs with Packer
* launching infrastructure with Packer-built AMIs



### Development Workflow


The development of content should follow something similar to the [git-flow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) model.

1. Ansible work should be started as feature-branches.  
1. Ansible roles should be rapidly iterated as small units locally through the `testing` directory with Vagrant when appropriate.
1. The role creator may then optionally submit a PR for the role(s).   
1. The the role requestor identifies that the role meets all success criteria. 
1. Ansible playbooks should be created/modified for using the roles in the dev/stage/prod environment.
1. Once new Ansible content is vetted in dev and stage environments, a release branch should be created.