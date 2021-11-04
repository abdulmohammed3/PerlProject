use warnings;
use strict;

my $filename = "inputFIle.txt";
my @all_lines =();
my @each_line;
my %student=();
my @grades;
my $count=0;
my @q_correct_count;
my $q_count = 0;
my @student_score;
open(my $fh,"<",$filename)or die "Could not open file $filename'\n'";
while(my $line = <$fh>){
    chomp $line;
    @all_lines[$count] = $line;
    @each_line = split(',', $line);
    @student{$each_line[0]} =$each_line[1];


    for my $i(2..$#each_line){
        $grades[$i-2]=$each_line[$i];
        @q_correct_count[$q_count] = $q_correct_count[$q_count] + $grades[$q_count];
        $q_count++;
    }
  my $sum = 0;
    foreach my $n (@grades) {
    $sum = $sum + $n;
    }

    $student_score[$count] = $sum;
    $count++;
    }
    print "$count";


