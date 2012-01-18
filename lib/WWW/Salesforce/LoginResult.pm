package WWW::Salesforce::LoginResult;
use 5.008001;
use Moose; #turns on strict and warnings

extends 'WWW::Salesforce::SObject';
use WWW::Salesforce::GetUserInfoResult;

use Carp qw(croak carp confess);

our $VERSION = "0.001";
$VERSION = eval $VERSION;

has 'passwordExpired' => ( is => 'rw', isa => 'Bool', default => 0 );
has 'metadataServerUrl' => ( is => 'rw', isa => 'Str', default => '' );
has 'serverUrl' => ( is => 'rw', isa => 'Str', default => '' );
has 'sessionId' => ( is => 'rw', isa => 'Str', default => '' );
has 'userId' => ( is => 'rw', isa => 'SF::ID' );
has 'userInfo' => ( is => 'rw', isa => 'WWW::Salesforce::GetUserInfoResult' );

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__

=pod

=head1 NAME

WWW::Salesforce::LoginResult - A class to help with the L<WWW::Salesforce/Login> method

=head1 DESCRIPTION

WWW::Salesforce::LoginResult is a subclass of L<WWW::Salesforce::SObject|WWW::Salesforce::SObject>.  This is one of the complex types Salesforce returns from a method call.

=head1 SYNOPSIS

 use WWW::Salesforce;
 my $sforce = WWW::Salesforce->new();
 
 #the login method returns a WWW::Salesforce::LoginResult on success
 my $lr = $sforce->login( 'username', 'password', 'token' );
 die $sforce->errstr() unless $lr;
 
=head1 METHODS

=over 4

=item new HASH

X<new>
Creates a new WWW::Salesforce::LoginResult object.

 my $lr = WWW::Salesforce::LoginResult->new();

The following are the accepted input parameters:

=over 4

=item metadataServerUrl

String.  Such as https://www.salesforce.com/services/Soap/u/23.0

=item passwordExpired

Boolean, defaulted to 0 (false)

=item serverUrl

String.  Such as https://www.salesforce.com/services/Soap/u/23.0

=item sessionId

String.  Temporary session id for the logged in user.

=item userId

IDs are valid if: ^[a-zA-Z0-9]{15,18}$

=item userInfo

WWW::Salesforce::GetUserInfoResult

=back

=item metadataServerUrl STRING

=item metadataServerUrl

X<metadataServerUrl>
URL of the endpoint that will process subsequent metadata API calls.
Your client application needs to set the endpoint.

 $lr->metadataServerUrl( 'https://na4-api.salesforce.com/services/Soap/m/23.0/DDD300000005x0d' );
 print $lr->metadataServerUrl();

=item passwordExpired BOOLEAN

=item passwordExpired

X<passwordExpired>
Indicates whether the password used during the login attempt is
expired (true) or not (false). If the password has expired, then
the API returns a valid sessionId, but the only allowable operation
is the setPassword() call. 

 $lr->passwordExpired( 1 );
 print $lr->passwordExpired();

=item serverUrl STRING

=item serverUrl

X<serverUrl>
URL of the endpoint that will process subsequent API calls.
Your client application needs to set the endpoint.

 $lr->serverUrl( 'https://na4-api.salesforce.com/services/Soap/m/23.0/DDD300000005x0d' );
 print $lr->serverUrl();

=item sessionId STRING

=item sessionId

X<sessionId>
Unique ID associated with this session. Your client application needs to set this value in the session header.

 $lr->sessionId( '22D300990005x1f!Lots_ofStuffAlloverThePlace.Gobbledygook' );
 print $lr->sessionId();

=item userId    ID

=item userId

X<userId>
ID of the user associated with the specified username and password.

 $lr->userId( 'D0000005anc00000CF' );
 print $lr->userId();

=item userInfo    WWW::Salesforce::GetUserInfoResult

=item userInfo

X<userInfo>
User information fields. For a list of these fields, see getUserInfoResult.

 $lr->userInfo( 'D0000005anc00000CF' );
 my $get_user_info_result = $lr->userInfo();
 print Dumper $get_user_info_result;

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

L<http://www.salesforce.com/us/developer/docs/api/Content/sforce_api_calls_login_loginresult.htm>

L<http://www.salesforce.com/us/developer/docs/api/index.htm>

=head1 AUTHORS

Chase Whitener <cwhitener at gmail dot com>

=head1 COPYRIGHT

Copyright 2003-2004 Chase Whitener. All rights reserved.

This library is free software; you can redistribute it and/or modify it under the same terms as Perl itself.

=cut
