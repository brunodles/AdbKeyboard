#!/bin/bash
text=$@
# String.replace " ", "%s"
text=${text// /%s}

# String.split " "
array=${text//;/ }

for i in $array; do
    if [[ $i =~ ^-?[0-9]+$ && "$i" -lt "100" ]]; then
      adb shell input keyevent $i
    else
      adb shell input text "$i"
    fi
done
