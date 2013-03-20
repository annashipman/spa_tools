#!/bin/bash

#
#  generate no longer on reserve email
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

We recently emailed you to let you know that your session, $session, was on the reserve list for SPA2013. We have now confirmed speakers for all of the available slots, and so unfortunately will not be able to include your session this time.

If someone has to drop out closer to the conference, we will look first to the reserve list for a replacement, so it is possible we may contact you again, but this is fairly unlikely so please don't feel obliged to prepare your session further.

Thank you for your contribution, and we really hope to see you at SPA regardless.

Anna Shipman and Robert Chatley
SPA Programme Chairs - 2013
http://www.spaconference.org
EOF

exit 0
