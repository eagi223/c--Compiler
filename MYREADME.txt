Fall 2015 CS441 Final Project Milestone D
Submission Date: 11/12 12:00AM
Names: Provided by JWJ

Ethan Gibson
eagi223@g.uky.edu

********
How to Run the program:

0. GUI Compiler Script
./chmod 777 ZZtests.sh **(only required if permissions need to be set before running)**
./ZZtests.sh

This script was written by myself and provides a GUI that allows you to view all source files,
view all test files and run all tests as well as the ability to run to shell scripts below. The
GUI provides a simple numeric input menu that is easily navigated.

1. Simple shell script:
./CSMilestoneCtest_script  "file name" (e.g. fib-input.cmm)

   The shell script assumes the location of testfiles to be under the TESTS-C directory.  If the .cmm test file is located in a different locaton, the DIRECTORY variable in the script must be modified.  Output is the result all of the following:  
	./Testcmm  "filename"
	./Compiler "filename" xxx.apm  
	./pstack/api xxx

   The advantage of this script is the ability to see the complete output.  The disadvantage is that it must be run separately for each test file.

2. more elaborated shell script provided by the instructor (Dr. Jaromczyk):
./test-cmm2pstack-modified.sh
    In this case, the "fib-input.cmm" file must be removed form the TESTS-C directory since it cannot read any keyboard input.  The advantage of this script is the ability to test all the files at once.  The disadvantage is its reliance on the correctness of .out and .err files.  

********
Implemented features:
1. getnum() function 
    The syntax is var = getnum();
2. If-then expression
    The syntax is if (expression){}.
3. If-then-else expression
    The syntax is if(expression) {} else{}.
4. for loop
    if(exp, exp){stm}
5. for loop
    if(exp, exp, exp){stm}
6. Return Optimization
7. Greater than
    >
8. Equal To
    == 
9. Do/While
    do{stm}while(exp);
********
Not implemented features and bugs:
-Globals
-Argument Count
-Doubles and Type Checking

********
Extras:

********
Included test files: found under TESTS-C.  Except for fib-input.cmm .err and .out files are provided for each.
   ifElseFor1.cmm
   ifElseFor2.cmm
   fib-input.cmm   (no corersponding .err and .out files)
   simple1_for2.cmm   
   simple1_ifElse.cmm 
   simple2_ifElse.cmm
   msCtest1.cmm
   msDtest1.cmm
   msDtest2.cmm
   msDtest3.cmm

********
List of files and directories:

transcript.txt
-

MYREADME.txt
-A description of what the project encompasses and how to test it. Written by EAG based on
template provided by Dr. Jeromczyk.

codegen.cc
-code generator to convert .cmm files to pstack. This defines the behaviour of the .cmm syntax by writing it in pstack code. This was provided by Dr. Jeromczyk. The file was modified to add the functionality described by the Implemented features section of this document.

codegen.h
-a header file for the codegenerator that defines key constructs. This was provided, but edited to define the features in the Implemented features section.

ZZtests.sh
-a shell script written by EAG to allow for easy testing of features.

cmm.cf
-defines grammar of C-- for BNFC

compiler
-the generated compiler

Makefile.codegen
-the provided file that builds the code generator and compiler

CS441MilestoneCtest_script
-the provided script to test individual files

test-cmm2pstack-modified.sh
-the provided script to test a directory of files

/TESTS-C
-a directory holding the tests for the compiler listed below.

->fib-input.cmm
The provided file to test user input

->ifElseFor1.cmm
The provided file to test the IF/Else statement and For loop

->ifElseFor2.cmm
The provided file to test the IF/Else statement and For loop

->simple1_ifElse.cmm
The provided file to test IF/Else

->simple2_ifElse.cmm
The provided file to test IF/Else

/MYTESTS
-a directory of custom tests

->msCtest1.cmm
A file written by EAG to test all msC features

->msDtest1.cmm
A file to test > and == functionality

->msDtest2.cmm
A game that allows the user to input guesses for a number. Uses all features of the final submission.

->msDtest3.cmm
Multiplication table generator. shows Do/While functionality
*******

***NOTE:
-CUSTOM TESTS REQUIRE USER INPUT AND DO NOT INCLUDE EXPECTED OUTCOMES
