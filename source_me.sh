#! /bin/bash -ex

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export ANSIBLE_ROLES_PATH=$DIR/roles
export ANSIBLE_CALLBACK_PLUGINS=$DIR/callback
export ANSIBLE_FILTER_PLUGINS=$DIR/filter
export ANSIBLE_LIBRARY=$DIR/library
