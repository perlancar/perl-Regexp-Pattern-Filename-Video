package Regexp::Pattern::Filename::Video;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;
#use utf8;

use Filename::Video ();

our %RE;

$RE{filename_video} = {
    summary => 'Video filename',
    pat => $Filename::Video::RE,
    tags => ['anchored'],
    examples => [
        {str=>'foo', matches=>0, summary=>'No extension'},
        {str=>'mp4', matches=>0, summary=>'Not an extension'},
        {str=>'foo.mp4', matches=>1},
        {str=>'foo bar.MKV', matches=>1, summary=>'Case insensitive'},
        {str=>'foo.MKV is the file', matches=>0, summary=>'Regex is anchored'},
        {str=>'foo.mp3', matches=>0},
    ],
};

1;
# ABSTRACT: Video filename

=head1 DESCRIPTION

This is a L<Regexp::Pattern> wrapper for L<Filename::Video>.


=head1 SEE ALSO

L<Regexp::Pattern>

L<Filename::Video>
