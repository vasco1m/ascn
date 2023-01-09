use strict;
use warnings;

foreach(1..5){

	my $output = `kubectl get pvc mysql-pv-claim --namespace=$ARGV[0]`;

	if($output =~ m/Bound/){
		exit 0;
	}

	sleep 5;
}

exit 1;
