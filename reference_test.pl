#!/usr/bin/perl


#get the bib files
#
foreach my $bib (glob "ref/*bib") {
   unless ($bib =~ /ref\/references_(.+)\.bib/) {
	   die "No course directory in $bib";
   }
   my $course_dir = $1;
   unless (-d "courses/$course_dir") {
      die ("Course directory courses/$course_dir does not exist");
   } 
   unless (-d "courses/$course_dir/docs/chapters") {
      die ("Chapters directory courses/$course_dir/docs/chapters does not exist");
   }
   my $ref_out;
   open (IN, $bib) or die "Cannot read from $bib";
   while (<IN>) {
    if (/\@.+\{(\S+),/) {
      my $ref = $1;
      $ref_out .= "[\@$ref]\n";
    }
   }
  open (OUT, ">courses/$course_dir/docs/chapters/references.md");
  print OUT "<div style='display:none'>$ref_out</div>\n\\bibliography\n";
  close OUT;
}

