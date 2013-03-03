#Tools to help process SPA programme creation

## Getting a list of names, emails, sessions and statuses

Copy data from this page: http://www.spaconference.org/scripts/proposals.php into data/allproposals.txt and the list of users into data/users.txt, then run tools/prune_submissions.sh

## Generating the emails

To generate the emails, you need to create three bash scripts in the emails folder:

	emails/generate_acceptance_email.sh
	emails/generate_reserve_email.sh
	emails/generate_rejection_email.sh

These each accept "$subject" "$email" "$name" "$session". 
