#!/usr/bin/perl


print STDERR "Updating references\n";

open (OUT, ">courses/course1/docs/chapters/references2.md");


my $cur = time;

print OUT "References:\n\nref1\nref2\nref3\ncreated at $cur\n";
