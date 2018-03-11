#!/bin/bash
file=$1
new=`sort $file  | uniq -u  `
echo $new > $file





