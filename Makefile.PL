use 5.008001;
use ExtUtils::MakeMaker;
exit 0 if $ENV{AUTOMATED_TESTING};

my $SFDC_CONFIG_FILE = "t/sfdc.cfg";

use vars qw($user $pass);
eval "require( $SFDC_CONFIG_FILE );";

print <<END;
Several tests need to be run in order to test the Salesforce Perl module.
You MUST supply a Saleforce username and password in order to proceed.

All tests will fail if you do not provide a valid username and password.
For this reason, all automated testing will fail.

This username and password combination is used ONLY for testing purposes.

END

$user = ExtUtils::MakeMaker::prompt('Enter user name:', $user);
$pass = ExtUtils::MakeMaker::prompt('Enter password:', $pass);
$user = '' unless defined $user;
$pass = '' unless defined $pass;
open(CFGFILE, ">$SFDC_CONFIG_FILE") || die "$SFDC_CONFIG_FILE: $!\n";
print CFGFILE <<EOF;
\$user = '$user';
\$pass = '$pass';
1;
EOF
close(CFGFILE);

WriteMakefile(
    NAME              => 'WWW::Salesforce',
    VERSION_FROM      => 'lib/WWW/Salesforce.pm', # finds $VERSION
    PREREQ_PM         => {
        'Crypt::SSLeay' => 0.56,
        'SOAP::Lite'    => 0.68,
    }, # e.g., Module::Name => 1.1
    ABSTRACT_FROM => 'lib/WWW/Salesforce.pm',
    AUTHOR => 'Chase Whitener <cwhitener@gmail.com>',
    LICENSE => 'perl',
);
