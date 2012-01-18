package WWW::Salesforce::DescribeGlobalSObjectResult;
use 5.008001;
use Moose; #turns on strict and warnings

extends 'WWW::Salesforce::SObject';

use Carp qw(croak carp confess);

our $VERSION = "0.001";
$VERSION = eval $VERSION;

has 'activateable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'createable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'custom' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'customSetting' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'deletable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'deprecatedAndHidden' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'feedEnabled' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'keyPrefix' => ( is => 'rw', isa => 'Str', default => '' );
has 'label' => ( is => 'rw', isa => 'Str', default => '' );
has 'labelPlural' => ( is => 'rw', isa => 'Str', default => '' );
has 'layoutable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'mergeable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'name' => ( is => 'rw', isa => 'Str', default => '' );
has 'queryable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'replicateable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'retrieveable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'searchable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'triggerable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'undeletable' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'updateable' => ( is => 'rw', isa => 'Bool', default => 0 );

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

=pod

=head1 NAME

WWW::Salesforce::DescribeGlobalSObjectResult - A class to help with the L<WWW::Salesforce/DescribeGlobal> method

=head1 DESCRIPTION

WWW::Salesforce::DescribeGlobalSObjectResult is a subclass of L<WWW::Salesforce::SObject|WWW::Salesforce::SObject>.  This is one of the complex types Salesforce returns from a method call.

=head1 SYNOPSIS

 use WWW::Salesforce;
 my $sforce = WWW::Salesforce->new();
 
 my $lr = $sforce->login( 'username', 'password', 'token' );
 die $sforce->errstr() unless $lr;
 
 my $global = $sforce->describeGlobal();

=head1 METHODS

=over 4

=item new HASH

X<new>
Creates a new WWW::Salesforce::DescribeGlobalSObjectResult object.

 my $dgsor = WWW::Salesforce::DescribeGlobalSObjectResult->new();

The following are the accepted input parameters:

=over 4

=back

=item accessibilityMode BOOLEAN

=item accessibilityMode

X<accessibilityMode>
Available in API version 7.0 and later. Indicates whether user interface modifications for the visually impaired are on (true 1) or off (false 0). The modifications facilitate the use of screen readers such as JAWS. 

 $uir->accessibilityMode( 1 );
 print $uir->accessibilityMode();

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

L<http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_calls_describeglobal_describeglobalresult.htm>

L<http://www.salesforce.com/us/developer/docs/api/index.htm>

=head1 AUTHORS

Chase Whitener <cwhitener at gmail dot com>

=head1 COPYRIGHT

Copyright 2003-2004 Chase Whitener. All rights reserved.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut
