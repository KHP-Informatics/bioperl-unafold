# ABSTRACT: Bioperl-compatible wrapper for locally running Unafold's hybrid_ss command.

=head1 NAME

Bio::Tools::Run::Unafold::hybrid_ss - bioperl wrapper for hybrid_ss

=head1 SYNOPSIS

 my $folder = Bio::Tools::Run::Unafold::hybrid_ss->new();
 my $folder->set_param(


=head1 DESCRIPTION

A Bioperl-compatible wrapper for locally running Unafold's hybrid_ss command

=cut 

use strict;
use warnings;
package Bio::Tools::Run::Unafold::hybrid_ss;

use base qw(Bio::Tools::Run::Unafold::Base);


=head2 parameters

Title    : parameters
Usage    : Accessor
Function : Returns a list of valid parameters and descriptions.
Returns  : HashRef in the form {paramname => 'description', ... }
Args     : None

=cut

{ # scope forces  variable access through accessor. 
  my $Parameters = {
		    NA          => 'Nucleic Acid. RNA | DNA. Default is RNA',
		    tmin        => 'Minimum Temperature. Default is 0',
		    tinc        => 'Temperature Increment. Default is 1',
		    tmax        => 'Maximum Temperature. Default is 100',
		    sodium      => 'Sodium ion concentration (molar). Default is 1',
		    magnesium   => 'Magnesium ion concentration (molar). Default is 0',
		    polymer     => 'Use salt corrections for polymers instead of oligomers. Boolean. Default is 0',
#		    suffix      => 'Use energy rules with the given suffix. Default is ""',
		    output      => 'Name output files with the given string as a prefix. Default is ""',
		    prohibit    => 'Prohibit all basepairs in the helix from i,j to i+k-1,j-k+1. If j is 0, prohibit bases i to i+k-1 from pairing at all; if i is 0, prohibit bases j to j-k+1 from pairing at all. k defaults to 1',
		    force       => 'Force all basepairs in the helix from i,j to i+k-1,j-k+1. If j is 0, forces bases i to i+k-1 to be double-stranded; if i is 0, forces bases j to j-k+1 to be double-stranded. k defaults to 1',
		    energyOnly  => 'Skips computation of probabilities. Boolean',
		    noisolate   => 'Prohibit all isolated basepairs. Isolated basepairs are helices of length 2; that is, they do not stack on another basepair on either side. Boolean',
		    zip         => 'Force zipping up of helices by forcing single-stranded bases to dangle on adjacent basepairs when possible. Boolean',
		    tracebacks  => 'Computes the given number of stochastic tracebacks. Computed according to the Boltzmann probability distribution so that the probability of a structure is its Boltzmann factor divided by the partition function',
		    maxbp       => 'Bases further apart than the specified number cannot form. Default is no limit',
		    allpairs    => 'Allows basepairs to form between any two nucleotides. Watson-Crick and wobble are default',
		    maxloop     => 'Maximum size of bulge/interior loops. Default is 30',
		    nodangle    => 'Removes single-base stacking from consideration. Boolean',
		    simple      => 'Makes the penalty for multibranch loops constant rather than affine. Boolean',
		    prefilter   => 'Filter our all basepairs except those in groups of '
		    
--prefilter=value1[,value2]
Sets the prefilter to filter out all basepairs except those in groups of value2 adjacent basepairs of which value1 can form. value2 is the same as value1 if unspecified. Default is 2 of 2. (See also the --noisolate option above.)
--nopostfilter
Disables the postfilter. The postfilter, which is enabled by default, removes from consideration all structures that consist of only one basepair.
Environment


		   }
  sub method_name{
    return $Parameters;
  }
}

# don't use autoload. Add subs direct to typeglob:
# in which case it is totally worth having a base class?

#*foo = sub { print "Here I am!\n" };
#foo();


=head1 FEEDBACK

=head2 Mailing Lists

User feedback is an integral part of the evolution of this and other
Bioperl modules. Send your comments and suggestions preferably to the
Bioperl mailing list. Your participation is much appreciated. 

  bioperl-l@bioperl.org                  - General discussion
  http://bioperl.org/wiki/Mailing_lists  - About the mailing lists

=head2 Reporting Bugs 

Report bugs to the Bioperl bug tracking system to help us keep track
of the bugs and their resolution. Bug reports can be submitted via the
web:

  http://bugzilla.open-bio.org/  

=head1 AUTHOR - Cass Johnston <cassjohnston@gmail.com>

The author(s) and contact details should be included here (this insures you get credit for creating the module.  
Lesser contributions can be documented in a separate CONTRIBUTORS section if you prefer. 

=cut

1;
