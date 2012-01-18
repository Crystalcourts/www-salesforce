package WWW::Salesforce::DescribeGlobalResult;
use 5.008001;
use Moose; #turns on strict and warnings

extends 'WWW::Salesforce::SObject';

use WWW::Salesforce::DescribeGlobalSObjectResult;
use Carp qw(croak carp confess);

our $VERSION = "0.001";
$VERSION = eval $VERSION;

has 'encoding' => ( is => 'rw', isa => 'Str', default => '' );
has 'maxBatchSize' => ( is => 'rw', isa => 'Int', default => 0 );
has 'sobjects' => ( is => 'rw', isa => 'ArrayRef[WWW::Salesforce::DescribeGlobalSObjectResult]', default => '' );
has 'types' => ( is => 'rw', isa => 'ArrayRef[Str]' );

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

=pod

=head1 NAME

WWW::Salesforce::DescribeGlobalResult - A class to help with the L<WWW::Salesforce/DescribeGlobal> method

=head1 DESCRIPTION

WWW::Salesforce::DescribeGlobalResult is a subclass of L<WWW::Salesforce::SObject|WWW::Salesforce::SObject>.  This is one of the complex types Salesforce returns from a method call.

=head1 SYNOPSIS

 use WWW::Salesforce;
 my $sforce = WWW::Salesforce->new();
 
 #the login method returns a WWW::Salesforce::LoginResult on success
 my $lr = $sforce->login( 'username', 'password', 'token' );
 die $sforce->errstr() unless $lr;
 
 my $global = $sforce->describeGlobal();

=head1 METHODS

=over 4

=item new HASH

X<new>
Creates a new WWW::Salesforce::DescribeGlobalResult object.

 my $dgr = WWW::Salesforce::DescribeGlobalResult->new();

The following are the accepted input parameters:

=over 4

=item accessibilityMode

Boolean, defaulted to 0 (false)

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

L<http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_calls_getuserinfo_getuserinforesult.htm>

L<http://www.salesforce.com/us/developer/docs/api/index.htm>

=head1 AUTHORS

Chase Whitener <cwhitener at gmail dot com>

=head1 COPYRIGHT

Copyright 2003-2004 Chase Whitener. All rights reserved.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut
