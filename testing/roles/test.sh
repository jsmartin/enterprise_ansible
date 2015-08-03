#! /bin/bash -e
set +x
if [[ "$#" -ge "2" ]]; then 
	for item in $@; do
		if [[ $item == '-a' ]]; 
			then echo "Can't mix -a and module names"
			exit 1
		fi
	done 
fi


while getopts ":a" opt; do
  case $opt in
    a)
      echo "Testing all modules" >&2
      roles=$(ls -d -1  $ANSIBLE_ROLES_PATH/**)
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done

if [ -z "$roles" ]; then
	roles=()
	for role in $@; do
		roles+=$(echo " $ANSIBLE_ROLES_PATH/$role")
	done
fi

set -x
for role in $roles; do
	echo Testing $(basename $role);
	cd $role/testing
	vagrant destroy -f
	vagrant up
	vagrant destroy -f
done
