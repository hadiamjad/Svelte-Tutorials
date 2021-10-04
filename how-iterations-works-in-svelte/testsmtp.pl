use strict;
use warnings;

use Email::Sender::Simple qw(sendmail);
use Email::Sender::Transport::SMTP ();
use Email::Simple ();
use Email::Simple::Creator ();

my $smtpserver = 'email-smtp.us-west-2.amazonaws.com';
my $smtpport = 587;
my $smtpuser   = 'AKIASBZQYORLCMFZ4YZA';
my $smtppassword = 'BBukFV5w4JSXqISIXLx0h44uatKkgIbWqd3pcoGMxzo7';

my $transport = Email::Sender::Transport::SMTP->new({
  host => $smtpserver,
  port => $smtpport,
  sasl_username => $smtpuser,
  sasl_password => $smtppassword,
});

my $email = Email::Simple->create(
  header => [
    To      => 'kukreti.ashutosh@gmail.com',
    From    => 'noreply@barkani.com',
    Subject => 'Hi!',
  ],
  body => "This is my message\n",
);

sendmail($email, { transport => $transport });
