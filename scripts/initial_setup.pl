#!/usr/bin/env perl

use strict;
use warnings;

use constant PACKAGES => [
    'ansible',
    'kubectl',
    'python3',
    'python3-pip',
    'python3-google-auth',
    'python3-kubernetes',
    'python3-pretty-yaml',
    'google-cloud-sdk-gke-gcloud-auth-plugin'
];


# perform system update and install needed packages
system 'sudo apt update';

foreach(@{PACKAGES()}){

    if(`dpkg-query -W -f='\${Status}' $_ 2> /dev/null | grep -ic 'ok installed'` == 0){
        system "sudo apt install -y $_";
    }
    else {
        print STDERR "\033[1;36mnote: \033[0m'$_' already installed; skipping.\n";
    }
}


# install kubernetes.core.k8s
system 'ansible-galaxy collection install kubernetes.core';


# install python bcrypt module
system 'pip install bcrypt';
