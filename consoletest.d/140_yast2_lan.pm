use bmwqemu;
# test yast2 lan functionality

script_sudo("/sbin/yast2 lan");

my $hostname="susetest";
my $domain="zq1.de";

sendkey("alt-s"); # open hostname tab
sleep 2;
sendkey("tab");
for(1..15){sendkey("backspace")}
sendautotype($hostname);
sendkey("tab");
for(1..15){sendkey("backspace")}
sendautotype($domain);
sleep 3;
sendkey("alt-o"); # OK=>Save&Exit
waitidle(180);
sleep 10;

script_run('echo $?');
#script_run("exec su - $username"); # get new hostname on prompt
#sendautotype("$password\n");
#sleep 3;
#sendkey "ctrl-l"; # clear screen
script_run('hostname');

1;