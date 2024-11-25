@echo off
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem ::             WLA DX compiling batch file v3              ::
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
rem :: Do not edit anything unless you know what you're doing! ::
rem :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set WLAPATH=.\wla-dx\

rem Cleanup to avoid confusion
if exist sf7000_rom.sc.o del sf7000_rom.sc.o

rem Compile
wla-z80 -v -o sf7000_rom.sc.o sf7000_rom.sc.asm

rem Link
wlalink -v -S "sf7000_rom.sc.link" "sf7000_rom.sc"

pause


