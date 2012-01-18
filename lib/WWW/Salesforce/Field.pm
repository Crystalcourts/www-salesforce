package WWW::Salesforce::Field;
use 5.008001;
use Moose; #turns on strict and warnings

extends 'WWW::Salesforce::SObject';
use WWW::Salesforce::PicklistEntry;

use Carp qw(croak carp confess);

our $VERSION = "0.001";
$VERSION = eval $VERSION;

has 'autonumber' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'byteLength' => ( is => 'rw', isa => 'Int', default => 0 );
has 'calculated' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'caseSensitive' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'controllerName' => ( is => 'rw', isa => 'Str', default => '' );
has 'createable' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'custom' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'defaultedOnCreate' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'defaultValueFormula' => ( is => 'rw', isa => 'Str', default => '' );
has 'dependentPicklist' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'deprecatedAndHidden' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'digits' => ( is => 'rw', isa => 'Int', default => 0 );
has 'filterable' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'formula' => ( is => 'rw', isa => 'Str', default => '' );
has 'groupable' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'htmlFormatted' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'idLookup' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'inlineHelpText' => ( is => 'rw', isa => 'Str', default => '' );
has 'label' => ( is => 'rw', isa => 'Str', default => '' );
has 'length' => ( is => 'rw', isa => 'Int', default => 0 );
has 'name' => ( is => 'rw', isa => 'Str', default => '' );
has 'nameField' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'namePointing' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'nillable' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'picklistValues' => ( is => 'rw', isa => 'ArrayRef[WWW::Salesforce::PicklistEntry]', );
has 'precision' => ( is => 'rw', isa => 'Int', default => 0 );
has 'RelationshipName' => ( is => 'rw', isa => 'Str', default => '' );
has 'relationshipOrder' => ( is => 'rw', isa => 'Int', default => 0 );
has 'referenceTo' => ( is => 'rw', isa => 'ArrayRef[Str]', );
has 'restrictedPicklist' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'scale' => ( is => 'rw', isa => 'Int', default => 0 );
has 'soapType' => ( is => 'rw', isa => 'Str', default => '' );
has 'sortable' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'type' => ( is => 'rw', isa => 'Str', default => '' );
has 'unique' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'updateable' => ( is => 'rw', isa => 'Bool', default => 0, );
has 'writeRequiresMasterRead' => ( is => 'rw', isa => 'Bool', default => 0, );

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

=pod

=head1 NAME

WWW::Salesforce::Field - TODO (-- Add documentation)

=head1 DESCRIPTION

WWW::Salesforce::Field is a subclass of L<WWW::Salesforce::SObject|WWW::Salesforce::SObject>. This is one of the complex types Salesforce returns from a method call.

=head1 SYNOPSIS

 use WWW::Salesforce;
 use WWW::Salesforce::LeadConvert;
 TODO

=head1 METHODS

=over 4

=item new HASH

X<new>
Creates a new WWW::Salesforce::Field object.  You shouldn't ever have to create this object on your own.

 my $field = WWW::Salesforce::Field->new();

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

L<http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_calls_convertlead_Field.htm>

L<http://www.salesforce.com/us/developer/docs/api/index.htm>

=head1 AUTHORS

Chase Whitener <cwhitener at gmail dot com>

=head1 COPYRIGHT

Copyright 2003-2004 Chase Whitener. All rights reserved.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut
