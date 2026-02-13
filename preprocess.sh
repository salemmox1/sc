#!/bin/bash
IMG="$1"
OUT="proc_$IMG"

convert "$IMG" \
  -resize 130% \
  -colorspace Gray \
  -contrast-stretch 0 \
  -threshold 65% \
  "$OUT"

echo "$OUT"
