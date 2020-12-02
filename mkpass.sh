#!/bin/bash

wvowels=$(for i in $(shuf -n 4 /usr/share/dict/words)
do foo=$(echo ${i:0:1} | tr  '[a-z]' '[A-Z]')${i:1}
  echo $foo
done | xargs | sed 's/ //g')$( echo $RANDOM | cut -b 1,2)'!'
pw=$(echo $wvowels | sed 's/[aeiou]//g')
echo $wvowels $pw
