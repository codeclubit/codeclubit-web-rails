#!/bin/bash

file=`basename  $1 .png`

dir=`dirname $1`

echo $file
echo $dir

pngquant -s 1 $1

mv $1 $1.ORIG
mv $dir/$file-fs8.png $1


echo "done!"
