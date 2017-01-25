@echo off
setlocal enabledelayedexpansion enableextensions
set LIST=
set SLIST=
for %%x in (lj_*.c) do set LIST=!LIST! out\%%x
for %%x in (lj_*.c) do set SLIST=!SLIST! out\static\%%x
for %%x in (lib_*.c) do set LIST=!LIST! out\%%x
for %%x in (lib_*.c) do set SLIST=!SLIST! out\static\%%x
set XLIST=%LIST:~1% 
set XSLIST=%SLIST:~1% 

echo OBJLIST = %XLIST:.c=.obj%>objlist.mak
echo OBJ_SLIST = %XSLIST:.c=.obj%>>objlist.mak
