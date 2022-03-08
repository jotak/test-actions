#!/bin/bash

tag=`git describe --exact-match --tags 2> /dev/null`
if [[ $tag =~ ^v[0-9]+\.[0-9]+\.[0-9]+(-rc[0-9]+)?$ ]]; then
		echo "$tag is a valid release tag"
		set -e
		echo "::set-output name=tag::$tag"
else
		echo "$tag is NOT a valid release tag"
		exit 1
fi
