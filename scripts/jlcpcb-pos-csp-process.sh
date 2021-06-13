#! /bin/bash

[ -z $1 ] && { echo "usage: $0 <pos file in csv format>"; exit 1; }
sed -i 's/Ref,/Designator,/' $1
sed -i 's/PosX,/Mid X,/' $1
sed -i 's/PosY,/Mid Y,/' $1
sed -i 's/Side/Layer/' $1
