#!/bin/bash

chmod 777 ./ZZtests.sh
clear
echo "---                C-- Parser               ---"
echo "-----written by Ethan Gibson for UK CS441G-----"
echo
echo "Building Project..."
bnfc -m -cpp cmm.cf
make -f Makefile.codegen
if [ $? -eq 0 ]; then
	echo "Build Successful"
else
	echo "Uh oh... Something went wrong. This project may need to be built manually... :("
fi
echo

echo "----------------------------------------"
echo "|            C--  Parser               |"
echo "----------------------------------------"
echo
echo "The following user interface was created for ease of testing, grading, and viewing of source code"
echo

source_men_wait()
{
	echo
	read -n1 -r -p "***Press Any Key to Return to Source Menu***" key
	source_menu
}

test_files_wait()
{
	echo
	read -n1 -r -p "***Press Any Key to Return to Test Files Menu***" key
	test_files
}

test_men_wait()
{
	echo
	read -n1 -r -p "***Press Any Key to Return to Test Menu***" key
	test_menu
}

main_men_wait()
{
	echo
	read -n1 -r -p "***Press Any Key to Return to Main Menu***" key
	main_menu
}

source_menu()
{
while :
do
	clear
	cat<<EOF
	=============================
	VIEW Source Menu
	-----------------------------
	Select a source file to view
	Enter NOT required

	(1) C-- Grammar
	(2) codegen.cc
	(3) codegen.h
	(4) pstcode.cc
	(5) pstcode.h
	(6) MYREADME.txt 
	(7) Makefile.codegen
	(8) ZZtests.sh
	(Q)uit		
EOF
	read -n1 -r
	case "$REPLY" in
		"1")	clear
			echo
			cat cmm.cf
			source_men_wait;;
		"2")	clear
			echo
			cat codegen.cc
			source_men_wait;;
		"3")	clear
			echo
			cat codegen.h
			source_men_wait;;
		"4")	clear
			echo
			cat pstcode.cc
			source_men_wait;;
		"5")	clear
			echo
			cat pstcode.h
			source_men_wait;;
		"6")	clear
			echo
			cat MYREADME.txt
			source_men_wait;;
		"7")	clear
			echo
			cat Makefile.codegen
			source_men_wait;;
		"8")	clear
			echo
			cat ZZtests.sh
			source_men_wait;;
		"9")	clear
			echo
			cat ZZtests.sh
			source_men_wait;;
		"q")	main_menu;;
		"Q")	main_menu;;
		 * )	echo "---Invalid Option---";;
	esac
	sleep 1
done
}

main_menu()
{
while :
do
	clear
	cat<<EOF
	==============================
	HOME Menu
	------------------------------
	Select an option below
	Enter NOT required

	(1) VIEW MYREADME.txt
	(2) VIEW Source Files
	(3) TEST Compiler
	(Q)uit
	------------------------------
EOF
	read -n1 -r
	case "$REPLY" in
		"1")	clear
			echo "Viewing README"
			echo
			cat MYREADME.txt
			main_men_wait;;
		"2") 	echo "Viewing Source Files"
			source_menu;;
		"3")	echo "Testing Compiler"
			test_menu;;
		"q") 	clear
			exit;;
		"Q") 	clear
			exit;;
		 * ) 	echo "----Invalid Input----";;
	esac
	sleep 1
done
}

test_menu()
{

while :
do
	clear
	cat<<EOF
	=============================
	TEST Parser Menu
	-----------------------------
	Select an option below then
	press enter
	
	(1)  msCtest1.cmm
	(2)  fib-input.cmm
	(3)  ifElseFor1.cmm
	(4)  ifElseFor2.cmm
	(5)  simple1_for2.cmm
	(6)  simple1_ifElse.cmm
	(7)  simple2_ifElse.cmm
        (8)  msDtest1.cmm 
	(9)  msDtest2.cmm
	(10) msDtest3.cmm
	(11) ALL FILES
	(Q)uit
EOF
	read
	case "$REPLY" in
		"1")	clear
			echo "test.mini"
			echo
			cat MYTESTS/msCtest1.cmm
			echo
			echo "*************************"
			echo "      BEGIN TESTING"
			echo "*************************"
			echo
			./CS441MilestoneCtest_script ./MYTESTS/msCtest1.cmm
			test_men_wait;;
		"2")	clear
			echo "fib-input.cmm"
			echo
			echo "*************************"
			echo "      BEGIN TESTING"
			echo "*************************"
			echo
			cat ./TESTS-C/fib-input.cmm
			echo
			./CS441MilestoneCtest_script ./TESTS-C/fib-input.cmm
			test_men_wait;;
		"3")	clear
			echo "ifElseFor1.cmm"
			echo
			echo "*************************"
			echo "      BEGIN TESTING"
			echo "*************************"
			echo
			cat ./TESTS-C/ifElseFor1.cmm
			echo
			./CS441MilestoneCtest_script ./TESTS-C/ifElseFor1.cmm
			test_men_wait;;
		"4")	clear
			echo "ifElseFor2.cmm"
			echo
			echo "*************************"
			echo "      BEGIN TESTING"
			echo "*************************"
			echo
			cat ./TESTS-C/ifElseFor2.cmm
			echo
			./CS441MilestoneCtest_script ./TESTS-C/ifElseFor2.cmm
			test_men_wait;;
		"5")	clear
			echo "simple1_for2.cmm"
			echo
			echo "*************************"
			echo "      BEGIN TESTING"
			echo "*************************"
			echo
			cat ./TESTS-C/simple1_for2.cmm
			echo
			./CS441MilestoneCtest_script ./TESTS-C/simple1_for2.cmm
			test_men_wait;;
		"6")	clear
			echo "simple1_ifElse.cmm"
			echo
			echo "*************************"
			echo "      BEGIN TESTING"
			echo "*************************"
			echo
			cat ./TESTS-C/simple1_ifElse.cmm
			echo
			./CS441MilestoneCtest_script ./TESTS-C/simple1_ifElse.cmm
			test_men_wait;;
		"7")	clear
			echo "simple2_ifElse.cmm"
			echo	
			echo "*************************"
			echo "      BEGIN TESTING"
			echo "*************************"
			echo
			cat ./TESTS-C/simple2_ifElse.cmm
			echo
			./CS441MilestoneCtest_script ./TESTS-C/simple1_ifElse.cmm
			test_men_wait;;
		"8")	clear
			echo "msDtest1.cmm"
			echo
			echo "************************"
			echo "      BEGIN TESTING     "
			echo "************************"
			echo
			cat ./MYTESTS/msDtest1.cmm
			echo
			./CS441MilestoneCtest_script ./MYTESTS/msDtest1.cmm
			test_men_wait;;
		"9")	clear
			echo "msDtest2.cmm"
			echo
			echo "************************"
			echo "     BEGIN TESTING"
			echo "************************"
			echo
			cat ./MYTESTS/msDtest2.cmm
			echo
			./CS441MilestoneCtest_script ./MYTESTS/msDtest2.cmm
			test_men_wait;;
		"10")	clear
			echo "msDtest3.cmm"
			echo
			echo "************************"
			echo "      BEGIN TESTING"
			echo "************************"
			echo
			cat ./MYTESTS/msDtest3.cmm
			echo
			./CS441MilestoneCtest_script ./MYTESTS/msDtest3.cmm
			test_men_wait;;
	
		"11")	clear
			echo "Test ALL Files"
			echo
			echo "*************************"
			echo "     BEGIN TESTING"
			echo "*************************"
			echo
			./CS441MilestoneCtest_script ./MYTESTS/msCtest1.cmm
			./CS441MilestoneCtest_script ./TESTS-C/fib-input.cmm
			./CS441MilestoneCtest_script ./TESTS-C/ifElseFor1.cmm
			./CS441MilestoneCtest_script ./TESTS-C/ifElseFor2.cmm
			./CS441MilestoneCtest_script ./TESTS-C/simple1_for2.cmm
			./CS441MilestoneCtest_script ./TESTS-C/simple1_ifElse.cmm
			./CS441MilestoneCtest_script ./TESTS-C/simple2_ifElse.cmm
			./CS441MilestoneCtest_script ./MYTESTS/msDtest1.cmm
			./CS441MilestoneCtest_script ./MYTESTS/msDtest2.cmm
			./CS441MilestoneCtest_script ./MYTESTS/msDtest3.cmm
			test_men_wait;;
		"q")	main_menu;;
		"Q")	main_menu;;
		 * )	echo "---Invalid Option---";;
		esac
		sleep 1
done
}

main_menu
