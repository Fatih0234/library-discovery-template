#!/bin/sh

set -eu

usage() {
  echo "Usage: search_repositories.sh \"<query>\" [sort] [order] [per_page] [page]" >&2
  exit 1
}

[ "${1:-}" ] || usage

query=$1
sort=${2:-}
order=${3:-}
per_page=${4:-20}
page=${5:-1}

case "$per_page" in
  ''|*[!0-9]*)
    echo "per_page must be an integer between 1 and 100" >&2
    exit 1
    ;;
esac

case "$page" in
  ''|*[!0-9]*)
    echo "page must be a positive integer" >&2
    exit 1
    ;;
esac

if [ "$per_page" -lt 1 ] || [ "$per_page" -gt 100 ]; then
  echo "per_page must be between 1 and 100" >&2
  exit 1
fi

if [ "$page" -lt 1 ]; then
  echo "page must be a positive integer" >&2
  exit 1
fi

case "$sort" in
  ''|stars|forks|help-wanted-issues|updated)
    ;;
  *)
    echo "sort must be one of: stars, forks, help-wanted-issues, updated" >&2
    exit 1
    ;;
esac

case "$order" in
  ''|asc|desc)
    ;;
  *)
    echo "order must be one of: asc, desc" >&2
    exit 1
    ;;
esac

accept_header="Accept: application/vnd.github+json"
version_header="X-GitHub-Api-Version: 2022-11-28"
endpoint="search/repositories"
api_url="https://api.github.com/search/repositories"

if command -v gh >/dev/null 2>&1 && gh auth status >/dev/null 2>&1; then
  set -- gh api \
    --method GET \
    -H "$accept_header" \
    -H "$version_header" \
    "$endpoint" \
    -f "q=$query" \
    -F "per_page=$per_page" \
    -F "page=$page"

  if [ -n "$sort" ]; then
    set -- "$@" -f "sort=$sort"
  fi

  if [ -n "$sort" ] && [ -n "$order" ]; then
    set -- "$@" -f "order=$order"
  fi

  exec "$@"
fi

set -- curl -fsSL -G \
  -H "$accept_header" \
  -H "$version_header" \
  --data-urlencode "q=$query" \
  --data-urlencode "per_page=$per_page" \
  --data-urlencode "page=$page"

if [ -n "$sort" ]; then
  set -- "$@" --data-urlencode "sort=$sort"
fi

if [ -n "$sort" ] && [ -n "$order" ]; then
  set -- "$@" --data-urlencode "order=$order"
fi

set -- "$@" "$api_url"

exec "$@"
