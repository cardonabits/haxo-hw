#! /bin/bash

[ -z $1 ] && { echo "usage: $0 <pos file in csv format>"; exit 1; }
sed --in-place='' -e 's/Ref,/Designator,/' $1
sed --in-place='' -e 's/PosX,/Mid X,/' $1
sed --in-place='' -e 's/PosY,/Mid Y,/' $1
sed --in-place='' -e 's/Side/Layer/' $1
sed --in-place='' -e 's/Rot,/Rotation,/' $1
