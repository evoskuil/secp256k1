@ECHO OFF
:: Usage: buildall.bat

:: Build all configurations for all solutions.
CALL build_base.bat ..\vs2022\secp256k1.sln 22
ECHO.

PAUSE
