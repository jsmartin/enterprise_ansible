#!/bin/bash -e

usage()
{
cat << EOF
usage: $0 <options>

Install ansible

OPTIONS:
   -h      Show this message
EOF
}

# Parse arguments
while getopts “h” OPTION
do
    case $OPTION in
        ?|h)
            usage
            exit
            ;;
    esac
done

# Install ansible (Apt)
type -p apt-get 2>/dev/null
if [ $? -eq 0 ]; then
    apt-get install -y software-properties-common
    add-apt-repository -y ppa:ansible/ansible
    apt-get update
    apt-get install -y ansible
fi

# Install ansible (Yum)
SYS_RELEASE=$(rpm -q --whatprovides --qf "%{version}" system-release 2>/dev/null)
if [ $? -eq 0 ]; then
    # Install epel-release on CentOS or RHEL
    case ${SYS_RELEASE} in
        6*)
            yum install -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
            ;;
        7*)
            yum install -y http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
            ;;
    esac
    yum clean all
    yum install -y ansible
fi
