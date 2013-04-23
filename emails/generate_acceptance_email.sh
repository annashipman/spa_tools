#!/bin/bash

#
#  generate acceptance email
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

We are pleased to let you know that your session $session has been accepted for SPA 2013.

What happens next?

1. Please confirm you still want to do this session by replying to this email.
2. Let us know if you have any constraints - e.g. if you cannot attend on a particular day.
3. Find accommodation. The first two named presenters for each accepted session get free registration, but SPA will not pay for hotel nights. You can see this page from a previous SPA for suggestions of hotels (exact details, prices etc may vary) http://www.spaconference.org/spa2011/index.php?page=accommodation. The Strand Palace is the closest.
4. Go to your “mySPA” page http://www.spaconference.org/scripts/myprofile.php to incorporate feedback and reviews into your preparation.
5. (optional) Edit your session description for participants. We will link to the description details you provided, so you might want to rewrite some parts to attract attendees, rather than presenting the session for review.

Things that don't happen:

1. You do not need to buy a ticket, but we will send you a link later on to register and give dietary requirements etc. If you have already purchased a ticket, please contact us to arrange a refund.
2. Unfortunately we are not able to pay travel expenses.

Things that may happen:

At SPA we provide shepherds to some sessions to make sure they are the best they can be. This might be  when you have not presented at SPA before, or if the session seems to need some improvement. We will contact you in a few weeks if we have allocated a shepherd to your session. If you don't hear from us, but would like a shepherd regardless, please let us know.

Kind regards,

Anna Shipman & Robert Chatley
SPA Programme Chairs - 2013
http://www.spaconference.org
EOF

exit 0
