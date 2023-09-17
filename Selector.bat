@echo off
setlocal enabledelayedexpansion

:MainMenu
cls
rem Display the menu
echo Windows 11 Legacy File Explorer Options -- By T3K --
echo 1.  Current User
echo 2.  System Wide

rem Prompt the user to enter a choice
set /p "choice=Enter your choice (1 or 2, or Q to quit): "

rem Process the user's choice
if "%choice%"=="1" (
  call :LocalExecution
) else if "%choice%"=="2" (
  call :SystemWideExecution
) else if /i "%choice%"=="Q" (
  echo Exiting...
  exit /b
) else (
  echo Invalid choice. Press any key to go to the main menu.
  pause >nul
  goto :MainMenu
)

rem Function for local file execution
:LocalExecution
cls
rem Define the list of local option filenames and extensions
set "localFiles[1]=.\Local\!Show Icons Never Thumbnails.reg"
set "localFiles[2]=.\Local\!Show Thumbnails.reg"
set "localFiles[3]=.\Local\Drive Letter - Before Name.reg"
set "localFiles[4]=.\Local\Drive Letter - After Name.reg"
set "localFiles[5]=.\Local\Drive Letter - Local After Name Network Before name.reg"
set "localFiles[6]=.\Local\Drive Letter - Hidden.reg"
set "localFiles[7]=.\Local\Encrypted File Show Color - Enable.reg"
set "localFiles[8]=.\Local\Encrypted File Show Color - Disable.reg"
set "localFiles[9]=.\Local\Hide Icons - Enable.reg"
set "localFiles[10]=.\Local\Hide Icons - Disable.reg"
set "localFiles[11]=.\Local\Hide Protected OS Files - Hide.reg"
set "localFiles[12]=.\Local\Hide Protected OS Files - Show.reg"
set "localFiles[13]=.\Local\HideMergeConflicts - Enable.reg"
set "localFiles[14]=.\Local\HideMergeConflicts - Disable.reg"
set "localFiles[15]=.\Local\Show Info Popup - Enable.reg"
set "localFiles[16]=.\Local\Show Info Popup - Disable.reg"
set "localFiles[17]=.\Local\Use Sharing Wizard - Enable.reg"
set "localFiles[18]=.\Local\Use Sharing Wizard - Disable.reg"

rem Define the list of friendly names for current user options
set "lName[1]= Show Icons Never Thumbnails"
set "lName[2]= Show Thumbnails"
set "lName[3]= Drive Letter - Before Name"
set "lName[4]= Drive Letter - After Name"
set "lName[5]= Drive Letter - Local After Name -> Network Before Name"
set "lName[6]= Drive Letter - Hidden"
set "lName[7]= Encrypted Files Show Color - Enable"
set "lName[8]= Encrypted Files Show Color - Disable"
set "lName[9]= Hide Icons - Enable"
set "lName[10]=Hide Icons - Disable"
set "lName[11]=Hide Protected OS Files - Hide"
set "lName[12]=Hide Protected OS Files - Show"
set "lName[13]=Hide Merge Conflicts - Enable"
set "lName[14]=Hide Merge Conflicts - Disable"
set "lName[15]=Show Info Popup - Enable"
set "lName[16]=Show Info Popup - Disable"
set "lName[17]=Use Sharing Wizard - Enable"
set "lName[18]=Use Sharing Wizard - Disable"

rem Display the numbered list of options
echo Select an option to change:
for /L %%i in (1,1,18) do (
  echo %%i. !lName[%%i]!
)
rem Prompt the user to enter a number
set /p "localChoice=Enter the number of the option you want to change for the current user: "

rem Check if the chosen number is valid
if defined localFiles[%localChoice%] (
 echo Executing !lName[%localChoice%]!
 start "" "!localFiles[%localChoice%]!"
) else (
  echo Invalid choice. Press any key to return to the Main Menu
  pause >nul
  goto :MainMenu
)
exit /b

rem Function for system-wide file execution
:SystemWideExecution
cls
rem Define the list of system-wide option filenames and extensions
set "SystemWideFiles[1]=.\System-Wide\!Show Icons Never Thumbnails.reg"
set "SystemWideFiles[2]=.\System-Wide\!Show Thumbnails.reg"
set "SystemWideFiles[3]=.\System-Wide\Drive Letter - Before Name.reg"
set "SystemWideFiles[4]=.\System-Wide\Drive Letter - After Name.reg"
set "SystemWideFiles[5]=.\System-Wide\Drive Letter - Local After Name Network Before name.reg"
set "SystemWideFiles[6]=.\System-Wide\Drive Letter - Hidden.reg"
set "SystemWideFiles[7]=.\System-Wide\Encrypted File Show Color - Enable.reg"
set "SystemWideFiles[8]=.\System-Wide\Encrypted File Show Color - Disable.reg"
set "SystemWideFiles[9]=.\System-Wide\Hide Icons - Enable.reg"
set "SystemWideFiles[10]=.\System-Wide\Hide Icons - Disable.reg"
set "SystemWideFiles[11]=.\System-Wide\Hide Protected OS Files - Hide.reg"
set "SystemWideFiles[12]=.\System-Wide\Hide Protected OS Files - Show.reg"
set "SystemWideFiles[13]=.\System-Wide\HideMergeConflicts - Enable.reg"
set "SystemWideFiles[14]=.\System-Wide\HideMergeConflicts - Disable.reg"
set "SystemWideFiles[15]=.\System-Wide\Show Info Popup - Enable.reg"
set "SystemWideFiles[16]=.\System-Wide\Show Info Popup - Disable.reg"
set "SystemWideFiles[17]=.\System-Wide\Use Sharing Wizard - Enable.reg"
set "SystemWideFiles[18]=.\System-Wide\Use Sharing Wizard - Disable.reg"

rem Define the list of system-wide options with their corresponding names
set "sWName[1]= Show Icons Never Thumbnails"
set "sWName[2]= Show Thumbnails"
set "sWName[3]= Drive Letter - Before Name"
set "sWName[4]= Drive Letter - After Name"
set "sWName[5]= Drive Letter - Local After Name Network Before Name"
set "sWName[6]= Drive Letter - Hidden"
set "sWName[7]= Encrypted Files Show Color - Enable"
set "sWName[8]= Encrypted Files Show Color - Disable"
set "sWName[9]= Hide Icons - Enable"
set "sWName[10]=Hide Icons - Disable"
set "sWName[11]=Hide Protected OS Files - Enable"
set "sWName[12]=Hide Protected OS Files - Disable"
set "sWName[13]=Hide Merge Conflicts - Enable"
set "sWName[14]=Hide Merge Conflicts - Disable"
set "sWName[15]=Show Info Popup - Enable"
set "sWName[16]=Show Info Popup - Disable"
set "sWName[17]=Use Sharing Wizard - Enable"
set "sWName[18]=Use Sharing Wizard - Disable"

rem Display the numbered list of system-wide files
echo Select a system-wide option to change:
for /L %%i in (1,1,18) do (
  echo %%i. !sWName[%%i]!
)
rem Prompt the user to enter a number
set /p "systemWideChoice=Enter the number of the system-wide option you want to change: "

rem Check if the chosen number is valid
if defined systemWideFiles[%systemWideChoice%] (
  echo Executing !sWName[%systemWideChoice%]!
  start "" "!systemWideFiles[%systemWideChoice%]!"
) else (
  echo Invalid choice. Press any key to return to the Main Menu
  pause >nul
  goto :MainMenu
)
exit /b