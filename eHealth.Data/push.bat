@echo off
setlocal

REM Set the device ID and package name
set DEVICE_ID=WCV5T19322001569
set PACKAGE_NAME=com.companyname.ehealth
set LOCAL_DB_PATH=%cd%\eHealth.db3



REM Function to push the database to the device
:push_db
echo Pushing database to device...
adb -s %DEVICE_ID% push %LOCAL_DB_PATH% /sdcard/eHealth.db3
adb -s %DEVICE_ID% shell "run-as %PACKAGE_NAME% cp /sdcard/eHealth.db3 /data/user/0/%PACKAGE_NAME%/files/.local/share/eHealth.db3"
echo Database pushed to device
goto :eof


echo Usage: %0 {push}
exit /b 1

endlocal
