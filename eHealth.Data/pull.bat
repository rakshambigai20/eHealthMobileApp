@echo off
setlocal

REM Set the device ID and package name
set DEVICE_ID=WCV5T19322001569
set PACKAGE_NAME=com.companyname.ehealth
set LOCAL_DB_PATH=%cd%\eHealth.db3

REM Function to pull the database from the device
:pull_db
echo Pulling database from device...
adb -s %DEVICE_ID% shell "run-as %PACKAGE_NAME% cp /data/user/0/%PACKAGE_NAME%/files/.local/share/eHealth.db3 /sdcard/eHealth.db3"
adb -s %DEVICE_ID% pull /sdcard/eHealth.db3 %LOCAL_DB_PATH%
echo Database pulled to %LOCAL_DB_PATH%
goto :eof




echo Usage: %0 {pull}
exit /b 1

endlocal
