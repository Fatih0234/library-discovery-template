# GitHub Search Notes

Source basis:

- GitHub REST API: About search
- GitHub REST API: Search repositories

API version used here: `2022-11-28`

## Endpoint

```text
GET /search/repositories
```

Recommended headers:

- `Accept: application/vnd.github+json`
- `X-GitHub-Api-Version: 2022-11-28`

The endpoint can search public repositories without authentication.

## Ranking and sorting

- Default ranking is best match in descending order.
- `order` only matters when `sort` is provided.
- Repository search `sort` values:
  - `stars`
  - `forks`
  - `help-wanted-issues`
  - `updated`

Use best match to find the likely official repository. Use explicit sort only when you want popularity or freshness scans.

## Pagination and result caps

- Up to 100 results per page
- Default `per_page` is 30
- `page` defaults to 1
- Search API provides up to 1,000 results for each search

Do not assume deep paging is exhaustive.

## Rate limits

- Authenticated search: up to 30 requests per minute
- Unauthenticated search: up to 10 requests per minute

Keep the number of search passes small and deliberate.

## Query limits

- Query length cannot exceed 256 characters, excluding operators and qualifiers
- Query cannot contain more than five `AND`, `OR`, or `NOT` operators

Prefer several narrow queries over one boolean-heavy query.

## Internal search scope

GitHub only searches through up to 4,000 matching repositories internally for a given query and returns results from within that scope.

Broad queries can miss good repositories even before the 1,000-result API cap matters.

## Incomplete results

Responses may include `incomplete_results=true` when a query times out.

Response strategy:

- narrow the query
- split a broad pass into smaller focused passes
- do not keep retrying the same broad query blindly

## `422` responses

`422` can mean:

- validation failure
- a query that exceeds length or boolean limits
- inaccessible qualifiers such as `repo:`, `user:`, or `org:` when authenticated access is missing
- endpoint spam/throttling

Response strategy:

- shorten the query
- simplify boolean logic
- remove or fix access qualifiers
- pause instead of hammering retries

## Command patterns

```sh
gh api \
  --method GET \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  search/repositories \
  -f q='tenacity language:Python' \
  -F per_page=20 \
  -F page=1
```

```sh
gh api \
  --method GET \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  search/repositories \
  -f q='pydantic example language:Python' \
  -f sort='stars' \
  -f order='desc' \
  -F per_page=20 \
  -F page=1
```
