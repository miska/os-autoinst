use base "basetest";
use bmwqemu;

sub run()
{
	my $self=shift;
	waitinststage "booted", 200; # wait until booted again
	mousemove_raw(30000, 30000); # move mouse off screen again
}

sub checklist()
{
	# return hashref:
	return {qw(
	)}
}

1;