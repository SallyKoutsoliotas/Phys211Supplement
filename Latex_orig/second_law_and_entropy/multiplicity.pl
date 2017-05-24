#!/usr/bin/perl

$qtot = 10;
$na = 3;
$nb = 2;

for($qa=0; $qa<=$qtot; $qa++){
    $qb = 10 - $qa;
    printf "%d\t%d\n",$qa, binomial($qa+$na-1, $qa)*binomial($qb+$nb-1, $qb);
}


sub binomial{
    my ($n, $m) = @_;
    return factorial($n)/(factorial($m)*factorial($n-$m));
}


sub factorial
{
    my $n = $_[0];
    my $i;
    $factorial = 1;
    for($i=1; $i<=$n; $i++){
	$factorial *= $i;
    }

    return $factorial;
}
