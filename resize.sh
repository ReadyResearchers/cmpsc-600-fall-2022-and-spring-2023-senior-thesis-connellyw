#! /bin/bash

images=$(find . -name '*' -exec file {} \; | grep -o -P '^.+: \w+ image' | cut -d ":" -f 1)

for image in $images; do
  echo $image
  if [[ ! -e $image ]];
    then continue;
  fi
  convert $image -resize 724x724\> $image
done
