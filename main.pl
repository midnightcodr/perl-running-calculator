#!/usr/bin/env perl
use strict;
use warnings;
if( $#ARGV+1 < 2 ) {
	print "Usage: $0 distance1 speed1 ...\n";
	exit;
}

my @distance=();
my @duration=();

foreach my $arg (@ARGV) {
	if( $arg =~ m{^([0-9]*\.?[0-9]+)$} ) {
		push @distance, $arg
	} elsif ( $arg =~ m{^(?:(?:(2[0-3]|[0-1]?[0-9])[:])?([0-5]?[0-9])[:])([0-5]?[0-9](?:\.[0-9]+)?)$} ) {
		my $dur=($1||0)*3600+$2*60+$3;
		push @duration, $dur;	
	}
}
if ( $#distance == $#duration ) {
	my $sum_distance=0;
	my $sum_duration=0;
	$sum_distance+=$_ for @distance;
	$sum_duration+=$_ for @duration;
	my ($hour, $min, $sec)=( ($sum_duration/3600)%24, ($sum_duration/60)%60, $sum_duration%60 );
	my $avg_speed=$sum_duration==0?0:$sum_distance*3600/$sum_duration;
	my $pace_seconds=$sum_distance==0?0:$sum_duration/$sum_distance;
	my ($phour, $pmin, $psec)=( ($pace_seconds/3600)%24, ($pace_seconds/60)%60, $pace_seconds%60 );

	printf("total_distance=%.2f, total_duration=%02d:%02d:%02d, average_speed=%.2fmph, average_pace=%02d:%02d/mi\n", $sum_distance, $hour, $min, $sec, $avg_speed, $pmin, $psec);
} else {
	print "Number of distance and duration parameters don't match.\n";
	exit;
}
