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

We are pleased to let you know that your session $session has been accepted for SPA 2014.

What happens next?

Things to do immediately:

1. Please confirm you still want to do this session by replying to this email.
2. Please let us know whether participants in your session will require a laptop.
3. Let us know if you have any other constraints, for example can't make a particular day.

Things to do before the conference:

1. Go to your “my SPA” page http://www.spaconference.org/scripts/myprofile.php to incorporate feedback and reviews into your preparation.
2. Your submission is what is used in the programme. Therefore, you might want to alter the title or description to attract attendees, rather than presenting the session for review.
3. Please let us know if your session requires any materials other than a projector, a whiteboard, power cables and pens.
4. Find accommodation. This page from a previous SPA has suggestions of hotels (exact details, prices etc may vary) - the Strand Palace is the closest - http://www.spaconference.org/spa2011/index.php?page=accommodation
We do not pay accommodation costs or travel expenses for speakers because the conference is not run for profit and we do everything we can to keep costs down for attendees. However, if this will make the difference between whether you are able to present your session or not, please contact us to discuss it as we may be able to make a small bursary available.

Things you do not need to do:

1. You do not need to buy a ticket. The first two named presenters receive free tickets. We will send you a link later on to register and give dietary requirements etc. If you have already purchased a ticket, please contact us to arrange a refund.

Things that may happen:

At SPA we provide shepherds to some sessions to make sure they are the best they can be. This might be when you have not presented at SPA before, or if the session seems to need some improvement. We will contact you in a few weeks if we have allocated a shepherd to your session. If you don't hear from us, but would like a shepherd regardless, please let us know. 

Kind regards,

EOF

exit 0
