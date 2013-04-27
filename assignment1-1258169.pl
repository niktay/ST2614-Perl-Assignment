#===============================================================================
#
#         FILE: assignment1-1258169.pl
#
#        USAGE: ./assignment1-1258169.pl {filename} [SWITCHES] 
#
#  DESCRIPTION:
#
#      OPTIONS: ---
# REQUIREMENTS: Perl 5.10.x
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nikolas Tay Zhihao (p1258169), DISM/FT/2A/02
# ORGANIZATION: Singapore Polytechnic
#      VERSION: 1.0
#      CREATED: 27/04/2013 16:35:24
#     REVISION: ---
#===============================================================================

#! /usr/bin/perl -w

use strict;
use warnings;
use Cwd;

sub print_usage
{
	print <<END;
Usage: {filename} [switches]

	-dpath		directory to search for html files		(default: .)
	-f[th]		output in text or html mode				(default: text)
	-h			print this message and exit
	-s[adn]		sort in ascenfing, descending or none	(default: none)
	-v			print version and exit

END
}
