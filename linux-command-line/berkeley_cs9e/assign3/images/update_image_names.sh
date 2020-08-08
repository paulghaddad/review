#!/bin/bash

for file in *.jpg
do
  NEW_FILE=$(echo ${file} | sed -e 's/^img/newyears/' | \
    sed -E 's/([0-9]{2})-([0-9]{2})-([0-9]{2})_/20\3-\1-\2_/' | \
    sed -E 's/_([0-9]{2})$/_\1/')
    mv "${file}" $NEW_FILE
done
