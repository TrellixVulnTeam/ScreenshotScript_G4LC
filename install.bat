:: ����, ���� ����� ������ ������
set programName=sysmon64
set dir=%PROGRAMFILES%\%programName%

:: �������� ����� � ���������� � �������� ����
xcopy "%~dp0\Data" "%dir%\" /S /E

PAUSE

:: ��������� ������ � ������ - ������������
REG ADD HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v %programName% /t REG_SZ /D "\"%dir%\Python3.6.2\pythonw.exe\" \"%dir%\create_scrin.pyw\""

PAUSE

EXIT