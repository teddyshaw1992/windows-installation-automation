@ECHO off

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

(for %%a in (%APPS_TO_INSTALL%) do (
   echo Choco install for %%a
   choco install %%a -y
   echo/
))

cup all -y

TIMEOUT 10