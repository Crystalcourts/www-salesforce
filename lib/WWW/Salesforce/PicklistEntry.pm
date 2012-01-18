package WWW::Salesforce::PicklistEntry;
use 5.008001;
use Moose; #turns on strict and warnings

extends 'WWW::Salesforce::SObject';

use Carp qw(croak carp confess);

our $VERSION = "0.001";
$VERSION = eval $VERSION;

has 'active' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'validFor' => ( is => 'rw', isa => 'ArrayRef[Str]' );
has 'defaultValue' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'label' => ( is => 'rw', isa => 'Str', default => '' );
has 'value' => ( is => 'rw', isa => 'Str', default => '' );

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

=pod

=head1 NAME

WWW::Salesforce::PicklistEntry - TODO (-- Add documentation)

=head1 DESCRIPTION

WWW::Salesforce::PicklistEntry is a subclass of L<WWW::Salesforce::SObject|WWW::Salesforce::SObject>. This is one of the complex types Salesforce returns from a method call.

=head1 SYNOPSIS

 use WWW::Salesforce;
 TODO

=head1 METHODS

=over 4

=item new HASH

X<new>
Creates a new WWW::Salesforce::PicklistEntry object.  You shouldn't ever have to create this object on your own.

 my $PicklistEntry = WWW::Salesforce::PicklistEntry->new();

The following are the accepted input parameters:

=over 4

=item TODO

=back

=head1 SUPPORT

Please visit Salesforce.com's user/developer forums online for assistance with
this module. You are free to contact the author directly if you are unable to
resolve your issue online.

=head1 SEE ALSO

L<WWW::Salesforce> by Chase Whitener

L<DBD::Salesforce> by Jun Shimizu

L<SOAP::Lite> by Byrne Reese

Examples on Salesforce website:

L<http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_calls_convertlead_PicklistEntry.htm>

L<http://www.salesforce.com/us/developer/docs/api/index.htm>

=head1 AUTHORS

Chase Whitener <cwhitener at gmail dot com>

=head1 COPYRIGHT

Copyright 2003-2004 Chase Whitener. All rights reserved.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut
