@ECHO OFF
ECHO Started nuget packaging build.
ECHO.
REM www.nuget.org/packages/gsl
gsl -script:package.gsl package.config
ECHO.
REM nuget.codeplex.com/releases
nuget pack package.nuspec -verbosity detailed
ECHO.
ECHO NOTE: Ignore warnings not applicable to native code: "Issue: Assembly outside lib folder."
ECHO.
ECHO Completed nuget packaging build. The package is in the following folder:
CD
PAUSE