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

Unfortunately we cannot include your session $session in the SPA 2014 programme. We had a very high standard of submissions this year. You can read the feedback provided here http://www.spaconference.org/scripts/myprofile.php and we hope you'll consider submitting again next year.

Thank you for your contribution, and we really hope to see you at SPA 2014 in June.

Kind regards,

EOF

exit 0
