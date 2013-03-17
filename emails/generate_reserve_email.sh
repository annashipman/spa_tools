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

Your session $session has been put on the reserve list for SPA 2013. This means that, while your session received good reviews, it didn't quite make it into the first draft of the programme. 

What happens next?

1. Sometimes people whose sessions have been accepted are no longer able to run the session. It is also possible that we might get more space to expand the number of sessions being run. If either of these happen, we will contact you to ask if you are still willing to run your proposed session.
2. Take a look at the reviews and feedback, http://www.spaconference.org/scripts/myprofile.php.
3. We will let you know either way before the the programme is published, on April 1st.

Thank you for your contribution,

Anna Shipman & Robert Chatley
SPA Programme Chairs - 2013
http://www.spaconference.org
EOF

exit 0