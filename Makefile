CC = g++
CCFLAGS = -g -W -Wall

FLEX = flex
FLEX_OPTS = -Pcmm

BISON = bison
BISON_OPTS = -t -pcmm

OBJS = Absyn.o Lexer.o Parser.o Printer.o

.PHONY: clean distclean

all: Testcmm

clean:
	rm -f *.o Testcmm cmm.aux cmm.log cmm.pdf cmm.dvi cmm.ps cmm

distclean: clean
	rm -f Absyn.C Absyn.H Test.C Parser.C Parser.H Lexer.C Skeleton.C Skeleton.H Printer.C Printer.H Makefile cmm.l cmm.y cmm.tex 

Testcmm: ${OBJS} Test.o
	@echo "Linking Testcmm..."
	${CC} ${CCFLAGS} ${OBJS} Test.o -o Testcmm

Absyn.o: Absyn.C Absyn.H
	${CC} ${CCFLAGS} -c Absyn.C

Lexer.C: cmm.l
	${FLEX} -oLexer.C cmm.l

Parser.C: cmm.y
	${BISON} cmm.y -o Parser.C

Lexer.o: Lexer.C Parser.H
	${CC} ${CCFLAGS} -c Lexer.C

Parser.o: Parser.C Absyn.H
	${CC} ${CCFLAGS} -c Parser.C

Printer.o: Printer.C Printer.H Absyn.H
	${CC} ${CCFLAGS} -c Printer.C

Skeleton.o: Skeleton.C Skeleton.H Absyn.H
	${CC} ${CCFLAGS} -c Skeleton.C

Test.o: Test.C Parser.H Printer.H Absyn.H
	${CC} ${CCFLAGS} -c Test.C

