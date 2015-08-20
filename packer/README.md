Packer files to generate AMIs based on defined roles can live here.  Ansible will be used to build the AMIs, and to do last-minute configuration on instances deployed using the AMIs.


Since the packer file is the same for all of the images we are building, aside from the playbook being called, we just parameterize the playbook name.

To build a virtualbox

	packer build -var 'playbook=apache.yml' -only=virtualbox-ovf myapp.json
	

To build an AMI

	packer build -var 'playbook=apache.yml' -only=amazon-ebs myapp.json