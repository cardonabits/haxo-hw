#! /bin/bash

[ -z $1 ] && { echo "usage: $0 <pos file in csv format>"; exit 1; }
sed -i '' -e 's/Ref,/Designator,/' $1
sed -i '' -e 's/PosX,/Mid X,/' $1
sed -i '' -e 's/PosY,/Mid Y,/' $1
sed -i '' -e 's/Side/Layer/' $1
