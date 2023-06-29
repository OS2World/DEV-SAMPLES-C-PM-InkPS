# make makefile
# 
# Tools used:
#  Compile::Resource Compiler
#  Compile::GNU C
#  Make: make
all : inkps.exe

inkps.exe : inkps.obj inkps.def inkps.res 
	gcc -Zomf inkps.obj inkps.def inkps.res -o inkps.exe
	wrc inkps.res

inkps.obj : inkps.c inkps.h
	gcc -Wall -Zomf -c -O2 inkps.c -o inkps.obj

inkps.res : inkps.rc 
	wrc -r inkps.rc

clean :
	rm -rf *exe *res *obj *lib