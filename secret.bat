color 0a
@echo off
title Folder Secret
if exist "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if not exist Secret goto MDLOCKER
:CONFIRM
echo Are you sure you want to lock the folder(Y/N)?
set /p "ans=>>"
if %ans%==Y goto LOCK
if %ans%==y goto LOCK
if %ans%==n goto END
if %ans%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Secret "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter password to unlock folder
set /p "key=>"
if not %key%==password goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Secret
echo Secret Folder Unlocked successfully!!
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Secret
echo Secret Folder created successfully!!
goto End
:End
