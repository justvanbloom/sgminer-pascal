@echo off
:loop

SET POOL=stratum+tcp://pascal.eu.nicehash.com:3358
SET USER=1GaGRtcCjb7ThaDgDLjgVwV8fctzEf12ct.jj
SET PASSWORD=x

setx GPU_FORCE_64BIT_PTR 0
setx GPU_MAX_HEAP_SIZE 100
setx GPU_USE_SYNC_OBJECTS 1
setx GPU_MAX_ALLOC_PERCENT 100
setx GPU_SINGLE_ALLOC_PERCENT 100

sgminer.exe -k pascal -o %POOL% -u %USER% -p %PASSWORD% -I 21 -w 64 -g4 -v
goto loop
