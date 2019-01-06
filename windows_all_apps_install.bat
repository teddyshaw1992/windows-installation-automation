@ECHO off

SETLOCAL

SET APPS_TO_INSTALL=^
 googlechrome ^
 python2 ^
 malwarebytes ^
 python3 ^
 awscli ^
 sourcetree ^
 winrar ^
 vlc ^
 vscode ^
 notepadplusplus.install ^
 discord ^
 git.install ^
 onenote ^
 unchecky ^
 cmder

:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END

PAUSE

(for %%a in (%APPS_TO_INSTALL%) do (
   echo Choco install for %%a
   choco install %%a -y
   echo/
))

cup all -y

:END

ECHO Complete
PAUSE

ENDLOCAL