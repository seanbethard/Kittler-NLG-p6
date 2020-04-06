#!/usr/bin/env perl6

use v6;
use lib 'lib';

use Kittler::NLG;
use PDF::Reader;

sub MAIN(Str $pdf-file) {
    say read-pdf($pdf-file)
}

sub read-pdf($pdf-file) returns PDF::COS::Dict {

    my PDF::Reader $reader .= new;
    $reader.open: $pdf-file;
    my $page1 = $reader.ind-obj(0, 0).object;
    my $pdf = $reader.trailer<Root>;
    $page1 = $pdf<Pages><Kids>[0];

}