#!/usr/bin/env sh

if [ "$#" -ne 1 ]; then
	echo "Error: missing required param."
	echo "Usage: $0 [COMMIT NAME]"
	exit 1
fi

# 1. generate content
hugo

# 2. push to the "pages" (public/) sub-repo
cd public && git add . && git commit -m "$1" && git push && cd ..
