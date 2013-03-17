#!/bin/bash

#
#  generate rejection email
#
#  usage: requires previous prune of submissions

set -e

subject="$1"
email_address="$2"
name="$3"
session="$4"

cat <<EOF
Subject: $subject
Email address: $email_address

Dear $name,

Unfortunately we cannot include your session $session in the SPA 2013 programme. Thank you for contributing to SPA. You can read the feedback provided to see if you want to do something different next year (our own sessions also don't always make it in and feedback has helped us improve our chances). You can find the reviews in your ‘mySPA’ page: http://www.spaconference.org/scripts/myprofile.php.

We hope to see you at SPA regardless. We've done our best to keep costs down, and create a programme that offers great value.

Kind regards,

Anna Shipman & Robert Chatley
SPA Programme Chairs - 2013
http://www.spaconference.org
EOF

exit 0