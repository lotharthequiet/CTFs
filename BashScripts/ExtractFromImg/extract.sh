#!/bin/bash
dd if=dolls.jpg of=extracted.png bs=1 count=$((($(od -t x1 appended.png | awk '{$1=""}1' | tr -d \\n | sed "s/00 00 00 00 49 45 4e 44 ae 42 60 82/XMATCHX/" | tr X \\n  | grep -b MATCH | cut -f1 -d:)-2)/3+12))
