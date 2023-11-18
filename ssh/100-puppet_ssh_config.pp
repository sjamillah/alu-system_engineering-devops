#!/usr/bin/env bash
#Script to use puppet to make change on the config file

file { 'etc/ssh/ssh_config':
        ensure => present,

content => "

        #SSH client configuration
        host*
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
	",

}
