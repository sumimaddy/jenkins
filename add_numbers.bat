@echo off
setlocal

REM Check if exactly two arguments are passed
if "%~2"=="" (
    echo Usage: %0 number1 number2
    exit /b 1
)

REM Get the arguments
set "num1=%~1"
set "num2=%~2"
echo Number 1: %num1%
echo Number 2: %num2%

REM Perform the addition
set /a sum=num1 + num2
echo Sum: %sum%

REM Print the result
echo The sum of %num1% and %num2% is %sum%.
