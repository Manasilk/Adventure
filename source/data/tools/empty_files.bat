@ECHO OFF

SET THIS_DIRECTORY=%~dp0
SET CREATE_COUNT=0
SET WRITE_COUNT=0
SET SKIP_COUNT=0
:: File formats
SET "MCC=mcfunction"
SET "JSON=json"

ECHO Select a format or enter your own:
ECHO 1. MCFUNCTION
ECHO 2. JSON
ECHO 3. Other
SET /P "EXTENSION=Enter desired format (number): "
:: Check format or user input if required
IF %EXTENSION% EQU 1 SET "OPT_FORMAT=%MCC%"
IF %EXTENSION% EQU 2 SET "OPT_FORMAT=%JSON%"
IF %EXTENSION% EQU 3 SET /P "EXTENSION=Enter required file extension: "

:ASK_CONTENT
CLS
:SKIP_CLS_ASK_CONTENT
ECHO Select writing options:
ECHO 1. Empty files
ECHO 2. Delete files
SET /P "OPT_WRITE=Enter desired operation (number): "
IF %OPT_WRITE% EQU 1 (
	GOTO EMPTY_FILES
	)
IF %OPT_WRITE% EQU 2 (
	GOTO DELETE_FILES
	)
IF %OPT_WRITE% NEQ 1 (
	IF %OPT_WRITE% NEQ 2 (
		CLS
		ECHO:This option does not exist! Please select again!
		GOTO SKIP_CLS_ASK_CONTENT
	)
)

:: ##### MAIN #####
CLS
:EMPTY_FILES
FOR /R %THIS_DIRECTORY% %%R IN (*.%OPT_FORMAT%) DO (
	IF EXIST %%R (
		SET /A WRITE_COUNT+=1
		TYPE nul
		) >%%R
		ECHO:Writing to "%%R"...
	)
GOTO END

:DELETE_FILES
DEL "%THIS_DIRECTORY%\*.%OPT_FORMAT%"

:END

ECHO:
PAUSE