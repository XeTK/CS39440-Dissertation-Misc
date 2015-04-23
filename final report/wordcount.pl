#!/usr/bin/perl -w

@ARGV and $ARGV[0] =~ /^-+h(elp)?$/ && die "Usage:\t$0 files\n\t$0 < files\n\t$0\n";

my $count = 0;
my $first = "";
my $tex = 0;

while ($first =~ /^\s*$/) {
    $first = <>;
}

if ($first =~ /^\\(input|section|setlength|documentstyle|chapter|documentclass|relax|contentsline|indexentry|begin|glossaryentry)/) {
    $tex = sub { $r = $_[0];
                 $m = $_[1];
                 $r =~ s/\\(emph|textbf|textit|texttt|em)\{//g;
                 $r =~ s/\\(sub)*section\*?\{[^\}]*\}//;
                 $r =~ s/\\title\{[^\}]*\}//;
                 $r =~ s/\\\(.*?\\\)/maths/g;
                 $r =~ s/\\\(.*?$/maths/;
                 $r =~ s/^.*?\\\)/maths/;
                 $r =~ s/\\\[.*?\\\]/maths/g;
                 $r =~ s/.*?\\\]// and $m = 0;
                 $m and $r = "";
                 $r =~ s/\\\[.*?$// and $m = 1;
                 $r =~ s/\\\S*//g;
                 $r =~ s/%.*//;
                 return ($r,$m) };
} else {
    $tex = sub { return ($_[0],0) };
    @split = split(" ", $first);
    $count += $#split + 1;
}

while ($s = <>) {
    ($t,$n) = &$tex($s,$n);
    @split = split(" ", $t);
    $count += $#split + 1;
}

print "Number of words: $count\n";