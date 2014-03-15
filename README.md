#Tools to help process SPA programme creation

## Set up
Copy data from this page: http://www.spaconference.org/scripts/proposals.php into data/allproposals.txt and the list of users into data/users.txt.
Make the first entry the top row and remove blank lines.

## Get list of all sessions with users and email addresses

```
   mkdir output
   tools/prune_submissions.sh
```

**NB** this step is required for subsequent steps.

## Generating the emails

    tool/generate_emails.sh

**NB** Note that manual checking of the emails is required before sending because the names are split on capital letters, i.e. AnnaShipman becomes Anna Shipman. This will of course not work for all types of name, for example Anna Mac Donald or Annavan Damme so checking is required.
