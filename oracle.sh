#!/bin/bash

function desired(){
rm -rf out1
g++ program1.cpp -o out1 >& /dev/null
./out1 > temp1
cmp temp1 temp2 || exit 1
return 0

}
desired
