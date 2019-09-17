@ECHO OFF

SET nl=^& echo.
SET THIS_DIRECTORY=%~dp0
:: START_INDEX sets the index starting point
:: INCREMENT_STEP sets the amount to increment each iteration
:: END_INDEX sets the index ending point
SET CREATE_COUNT=0
SET WRITE_COUNT=0
SET SKIP_COUNT=0
SET START_INDEX=1
SET INCREMENT_STEP=1
SET END_INDEX=0
:: File formats
SET "MCC=mcfunction"
SET "JSON=json"

:ASK_EXTENSION
:: Get user input on the file extension they need
ECHO Select a format or enter your own:
ECHO 1. MCFUNCTION
ECHO 2. JSON
ECHO 3. Other
SET /P "EXTENSION=Enter desired format (number): "
:: EX_OPTION_EXTENSION_DOES_NOT_EXIST
IF %EXTENSION% LSS 1 (
	CLS
	ECHO:This option does not exist! Please select again!
	GOTO ASK_EXTENSION
)
IF %EXTENSION% GTR 3 (
	CLS
	ECHO:This option does not exist! Please select again!
	GOTO ASK_EXTENSION
)
IF %EXTENSION% EQU 1 (
	SET "EXTENSION=%MCC%"
	GOTO ASK_CONTENT
	)
IF %EXTENSION% EQU 2 (
	SET "EXTENSION=%JSON%"
	GOTO ASK_CONTENT
	)
IF %EXTENSION% EQU 3 (
	SET /P "EXTENSION=Enter required file extension: "
	GOTO ASK_CONTENT
	)
	
:ASK_CONTENT
CLS
ECHO Select writing options:
ECHO 1. Create empty
ECHO 2. Create from template
ECHO 3. Append from template
SET /P "OPT_WRITE=Enter desired operation (number): "
:: EX_OPTION_WRITE_DOES_NOT_EXIST
IF %OPT_WRITE% LSS 1 (
	CLS
	ECHO:This option does not exist! Please select again!
	GOTO ASK_CONTENT
)
IF %OPT_WRITE% GTR 3 (
	CLS
	ECHO:This option does not exist! Please select again!
	GOTO ASK_CONTENT
)
IF %OPT_WRITE% GEQ 2 (
	IF %OPT_WRITE% LEQ 3 (
		IF NOT EXIST template.%EXTENSION% (
			ECHO:
			ECHO:Template file must match the chosen file extension, be placed in the same directory and named as "template"
			ECHO:No template file was found. Proceed to create empty files? [Y]/[N]
			SET /P "OPT_WRITE=Option: "
			IF /I %OPT_WRITE%==Y GOTO ASK_PREFIX
			IF /I %OPT_WRITE%==N GOTO ASK_CONTENT
			) ELSE (
			SET /P "END_INDEX=How many files to write to: "
			SET /P "PREFIX=Enter the file prefix name up to the index: "
			CLS
			GOTO ENTER_MAIN_LOOP
			)
		)
	)
	
:ASK_PREFIX
IF /I %OPT_WRITE%==Y SET OPT_WRITE=1
CLS
ECHO:Set a file name prefix? [Y]/[N]
SET /P "OPT_PREFIX=Option: "
IF /I %OPT_PREFIX%==Y GOTO CHOOSE_PREFIX
IF /I %OPT_PREFIX%==N GOTO ASK_HEADER

:CHOOSE_PREFIX
SET /P "PREFIX=Enter prefix: "

:ASK_HEADER
CLS
ECHO:Preset a file header? [Y]/[N]
SET /P "OPT_HEADER=Option: "
IF /I %OPT_HEADER%==Y GOTO CHOOSE_HEADER
IF /I %OPT_HEADER%==N GOTO ASK_COUNT

:CHOOSE_HEADER
SET /P "HEADER=Enter header text: "

:ASK_COUNT
CLS
:SKIP_CLS_ASK_COUNT
SET /P "END_INDEX=How many files to create: "
IF %END_INDEX% LSS 1 (
	CLS
	ECHO:Cannot create less than 1 file!
	GOTO SKIP_CLS_ASK_COUNT
	)

:: ##### MAIN #####
CLS
:: Check for existing duplicates
:ENTER_DUPE_LOOP
FOR /R %THIS_DIRECTORY% %%L IN (%PREFIX%*.%EXTENSION%) DO (
	SET /A SKIP_COUNT+=1
	)
IF %SKIP_COUNT% NEQ 0 (
	IF %OPT_WRITE% NEQ 3 (
		:: Skipped number of files = existing number of files
		:: To avoid create duplicates we sum the skipped files count
		SET /A START_INDEX+=%SKIP_COUNT%
		SET /A END_INDEX+=%SKIP_COUNT%
		)
	)
:ENTER_MAIN_LOOP
:: Reset dupe counter
IF %OPT_WRITE% EQU 1 (
	FOR /L %%L IN (%START_INDEX%,%INCREMENT_STEP%,%END_INDEX%) DO (
		IF NOT EXIST %PREFIX%%%L.%EXTENSION% (
			ECHO:%HEADER% > %PREFIX%%%L.%EXTENSION%
			SET /A CREATE_COUNT+=1
			)
		)
		GOTO EXIT_LOOP
	)
IF %OPT_WRITE% EQU 2 (
	FOR /L %%L IN (%START_INDEX%,%INCREMENT_STEP%,%END_INDEX%) DO (
		IF NOT EXIST %PREFIX%%%L.%EXTENSION% (
			TYPE template.%EXTENSION% > %PREFIX%%%L.%EXTENSION%
			SET /A CREATE_COUNT+=1
			)
		)
		GOTO EXIT_LOOP
	)
IF %OPT_WRITE% EQU 3 (
	FOR /L %%L IN (%START_INDEX%,%INCREMENT_STEP%,%END_INDEX%) DO (
		IF EXIST %PREFIX%%%L.%EXTENSION% (
			TYPE template.%EXTENSION% >> %PREFIX%%%L.%EXTENSION%
			ECHO:%nl% >> %PREFIX%%%L.%EXTENSION%
			SET /A WRITE_COUNT+=1
			)
		)
	)
:EXIT_LOOP
IF %CREATE_COUNT% NEQ 0 (
	ECHO Created %CREATE_COUNT% new files.
	) ELSE (
	ECHO:No new files were created.
	)
IF %OPT_WRITE% GTR 2 (
	IF %WRITE_COUNT% NEQ 0 (
		ECHO Written to %WRITE_COUNT% files.
		) ELSE (
		ECHO:No old files were written to.
		)
	)
:END
ECHO:
PAUSE