@echo off

set enginePath=..\GZDoom
set /p engineVersion=<%enginePath%/version.txt
set title=Back to Saturn X Episode 2: Tower In The Fountain Of Sparks

:: when using these variables, remember to put a forward slash after them
set iwadsPath=%enginePath%/IWADs
set modsPath=%enginePath%/Mods
set globalPath=%modsPath%/#GLOBAL
set megawadsPath=%modsPath%/#Megawads

:: when using this variable, remember to put a hyphen after it
set configsPath=%enginePath%/Configs/gzdoom

title %title%

echo %title%
echo by BTSX Team - https://www.doomworld.com/forum/topic/69960
echo.
echo Running on %engineVersion%
echo.
echo.

:: Use the caret (^) as a delimiter in case you want the parameters on different lines
:: -iwad 	= Path to IWAD for GZDoom to use (can be commercial, shareware or freedoom)
:: -file 	= Path to files, addons or mods to use
:: -config 	= Path to user config (.ini) file
:: +set 	= Set console variables on startup
cd
%enginePath%\gzdoom.exe ^
-iwad 	"%iwadsPath%/DOOM2.wad" ^
-file 	"%megawadsPath%/Back to Saturn X/btsx_e2a.wad" ^
		"%megawadsPath%/Back to Saturn X/btsx_e2b.wad" ^
-config "%configsPath%-__Vanilla__.ini" ^
+set dmflags 4259840 ^
+set compatflags -1172751421 ^
+set compatflags2 523 ^
+set vid_rendermode 0