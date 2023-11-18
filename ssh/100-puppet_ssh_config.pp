#!/usr/bin/env bash
#Script to use puppet to make change on the config file

file { 'ect/ssh/ssh_cofig':
        ensure => present,

content =>"

        #SSH client configuration
        host*
        IdentityFile ~/.ssh/school
        PasswordAuthentication no
	",

}
