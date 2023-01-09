use strict;
use warnings;

while(1){

	my $output = `kubectl get all -n $ARGV[0] 2>&1`;

	if($output =~ m/^No resources found in $ARGV[0] namespace\.$/){
		exit 0;
	}

	sleep 3;
}
