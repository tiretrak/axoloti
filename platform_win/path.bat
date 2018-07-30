set platformdir=%~sdp0

if not defined axoloti_release (
   set axoloti_release=%platformdir%..
)

if not defined axoloti_runtime (
   set axoloti_runtime=%platformdir%\..
)

if not defined axoloti_firmware (
   call :setfirmware "%axoloti_release%\firmware"
)
call :setrelease "%axoloti_release%"

if not defined axoloti_home (
   set axoloti_home=%platformdir%..
)

set PATH=%platformdir%gcc-arm-none-eabi-7-2018q2\bin;%platformdir%bin;%windir%\system32
echo PATH=%PATH%

goto :eof

:setfirmware
set axoloti_firmware=%~s1
goto :eof

:setrelease
set axoloti_release=%~s1
goto :eof