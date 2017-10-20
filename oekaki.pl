#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use feature 'say';
binmode(STDOUT,":utf8");
binmode(STDIN, ":utf8");
binmode(STDERR,":utf8");

my %table=();
foreach(<DATA>) {
	chomp;
	my @pair=split(/\t/);
	$table{$pair[0]}=$pair[1];
}
$table{" "}=":blank:";

sub cvt {
	my $chr=shift;
	return $table{"$chr"}."\x{200B}" if($table{"$chr"});
	return $table{" "}."\x{200B}";
}

foreach(<STDIN>) {
	chomp;
	s/(.)/&cvt($1)/eg;
	say;
}

__DATA__
1	:longfox_dl:
2	:longfox_dr:
3	:longfox_du:
4	:longfox_head_down:
5	:longfox_head_left:
6	:longfox_head_right:
7	:longfox_head_up:
8	:longfox_ld:
9	:longfox_lr:
a	:longfox_lu:
b	:longfox_rd:
c	:longfox_rl:
d	:longfox_ru:
e	:longfox_ud:
f	:longfox_ul:
g	:longfox_ur:
D	:doge:
B	:party_parrot:
