git add API/
git commit -m "data: add GitHub and JSONPlaceholder API responses and summary"
git push
# API Summary

## What is a REST API?

(write 2-3 sentences here in your own words)

## HTTP Status Codes Observed

- **200**: (write what it means in your own words)
- **404**: (write what it means in your own words)

## jq Filter Used

- `jq` is the command-line tool that reads and filters JSON.
- `{ ... }` builds a new, smaller JSON object from the larger response.
- `name:.name` creates a key called `name` and fills it with the `name` field from the input.
- `repos:.public_repos` creates a key called `repos` from the `public_repos` field.
- `followers:.followers` copies the `followers` field.
- `joined:.created_at` creates a key called `joined` from the account creation date.
