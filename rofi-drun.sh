#!/bin/bash

cmd="$*"
cmd_name=$(echo "$cmd" | awk '{print $1}')

if command -v "$cmd_name" >/dev/null 2>&1; then
    # Run full command with arguments
    $cmd &
else
    # Check if input looks like a URL (simple regex)
    if [[ "$cmd" =~ ^[a-zA-Z0-9.-]+\.[a-z]{2,}(/.*)?$ ]]; then
        # Open as URL (with http if missing)
        if [[ "$cmd" =~ ^https?:// ]]; then
            firefox "$cmd"
        else
            firefox "http://$cmd"
        fi
    else
        # Otherwise, do a Google search with spaces replaced by plus
        search_query=$(printf '%s' "$cmd" | sed 's/ /+/g')
        firefox "https://www.google.com/search?q=$search_query"
    fi
fi

