#!/usr/bin/env perl

use strict;
use warnings;

use constant CLUSTER => 'ascn-cluster';
use constant ZONE    => 'us-central1-a';


# fetch cluster endpoint
system 
    'export USE_GKE_CLOUD_AUTH_PLUGIN=true ' . 
    '&& gcloud container clusters get-credentials ' . CLUSTER . ' --zone "' . ZONE . '"';
