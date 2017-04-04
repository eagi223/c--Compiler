#!/bin/bash

chmod 777 ./msBrun.sh
clear
echo "---PA final msB---"
echo "---Ethan Gibson---"
echo
echo "Building Project..."

make clean
make -f Makefile.codegen

echo

rm cmm2pstack
mv compiler cmm2pstack

./cmm2pstack mysimple-if.cmm calc_out.apm
echo "Run Program"
echo "-----------"
echo
./pstack/api calc_out
echo
echo "Test Program Source"
echo "-------------------"
echo
cat mysimple-if.cmm
echo
echo "Run Program 1"
echo "------------"
echo
./pstack/api calc_out
cat TESTS/fib-recursive.cmm
rm calc_out.apm
./cmm2pstack TESTS/fib-recursive.cmm calc_out.apm
echo
echo "Run Program 2"
echo "-------------"
echo
./pstack/api calc_out
