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
    apt-get remove -y ansible
fi

# Install ansible (Yum)
SYS_RELEASE=$(rpm -q --whatprovides --qf "%{version}" system-release 2>/dev/null)
if [ $? -eq 0 ]; then
    # Install epel-release on CentOS or RHEL
    yum remove -y ansible
fi
