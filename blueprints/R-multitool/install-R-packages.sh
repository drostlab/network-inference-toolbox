#!/bin/sh

set -e

while read checksum tarball origin; do
  wget -O /tmp/$tarball $origin
  echo "$checksum  /tmp/$tarball" | sha256sum -c
  R CMD INSTALL /tmp/$tarball
done < "${1:-/dev/stdin}"
