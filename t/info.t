#                              -*- Mode: Perl -*- 
# info.t -- 
# ITIID           : $ITI$ $Header $__Header$
# Author          : Ulrich Pfeifer
# Created On      : Fri Dec 13 13:36:55 1996
# Last Modified By: Ulrich Pfeifer
# Last Modified On: Fri Dec 13 13:47:28 1996
# Language        : CPerl
# Update Count    : 4
# Status          : Unknown, Use with caution!
# 
# (C) Copyright 1996, Universität Dortmund, all rights reserved.
# 
# $Locker$
# $Log$
# 

BEGIN { $| = 1; print "1..2\n"; }
END {print "not ok 1\n" unless $loaded;}
use InfoBrief;
$loaded = 1;
print "ok 1\n";

if (! -e 'infobrief') {
  system "make infobrief" and
    die "Could not 'make infobrief: $!";
}
system qq($^X infobrief <t/test.adr >t/test.ps);

$status = (-s 't/test.ps') == (-s 't/should.ps');
print (($status)?"ok 2\n":"not ok 2\n");

