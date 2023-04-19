@echo off
rem for clean git commits.
del *.lst
del *.obj
del *.out
gmake -m
cd rom
ffc.bat
cd ..

