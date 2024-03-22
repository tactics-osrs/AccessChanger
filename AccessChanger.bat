@echo off
setlocal

:filePrompt
echo Please enter the full path of the file:
set /p filePath=
if not exist "%filePath%" (
    echo File not found. Please try again.
    goto displayHelp
)


:mainMenu
cls
echo File selected: %filePath%
echo.
echo 1. Display ACL
echo 2. Strip all access
echo 3. Grant full access to Administrators
echo 4. Grant read access to Users
echo 5. Help
echo 6. Exit
echo.
set /p userChoice=Please select an option (1-6): 

if "%userChoice%"=="1" (
    call :displayACL
) else if "%userChoice%"=="2" (
    call :stripAllAccess
) else if "%userChoice%"=="3" (
    call :grantAdminFullAccess
) else if "%userChoice%"=="4" (
    call :grantUserReadAccess
) else if "%userChoice%"=="5" (
    call :displayHelp
    goto filePrompt
) else if "%userChoice%"=="6" (
    exit /b
) else (
    echo Invalid option. Please try again.
    pause
    goto mainMenu
)

goto mainMenu

:displayACL
icacls "%filePath%"
pause
exit /b

:stripAllAccess
icacls "%filePath%" /deny everyone:(F)
pause
exit /b

:grantAdminFullAccess
icacls "%filePath%" /grant administrators:(F)
pause
exit /b

:grantUserReadAccess
icacls "%filePath%" /grant users:(R)
pause
exit /b

:displayHelp
echo.
echo Help:
echo.
echo "File Path: This is the location of the file on your computer. For example, C:\Windows\System32\drivers\example.sys"
echo.
echo "1. Display ACL: This option will display the Access Control List (ACL) for the selected file."
echo "2. Strip all access: This option will deny all users full control permissions to the file."
echo "3. Grant full access to Administrators: This option will grant Administrators full control permissions to the file."
echo "4. Grant read access to Users: This option will grant Users read permissions to the file."
echo "5. Help: This option will display this help message."
echo "6. Exit: This option will exit the script."
echo.
pause
goto filePrompt
