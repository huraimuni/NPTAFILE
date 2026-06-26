@echo off
net stop mpssvc /y
net stop KeyIso /y
net stop WlanSvc /y
net stop WinDefend /y

sc config mpssvc start= disabled
sc config KeyIso start= disabled
sc config WlanSvc start= disabled
sc config WinDefend start= disabled

reg add "HKLM\SYSTEM\CurrentControlSet\Services\mpssvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\KeyIso" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WlanSvc" /v Start /t REG_DWORD /d 4 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\WinDefend" /v Start /t REG_DWORD /d 4 /f

echo.
echo ===========================================
echo   윈도우 방화벽 + Windows Defender 완전 종료
echo   재부팅하면 다시 안 켜집니다!
echo ===========================================
pause