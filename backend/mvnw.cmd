@echo off
setlocal enabledelayedexpansion

set "JAVA_HOME=D:\JDK"
if not exist "%JAVA_HOME%\bin\java.exe" (
    echo Error: JAVA_HOME is set to an invalid directory.
    echo JAVA_HOME = "%JAVA_HOME%"
    echo Please set the JAVA_HOME variable in your environment to match the
    echo location of your Java installation.
    pause
    exit /b 1
)

set "MAVEN_HOME=%~dp0.mvn\wrapper"
set "MAVEN_JAR=%MAVEN_HOME%\maven-wrapper.jar"
set "MAVEN_OPTS=%MAVEN_OPTS%"
set "MAVEN_CONFIG=%*

if exist "%MAVEN_JAR%" goto run
echo Maven Wrapper jar not found at %MAVEN_JAR%
echo Downloading Maven Wrapper...
powershell -Command "& {[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; Invoke-WebRequest -Uri 'https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar' -OutFile '%MAVEN_JAR%'}"
if not exist "%MAVEN_JAR%" (
    echo Failed to download Maven Wrapper. Please install Maven manually.
    pause
    exit /b 1
)
echo Maven Wrapper downloaded successfully.

:run
"%JAVA_HOME%\bin\java.exe" %MAVEN_OPTS% -jar "%MAVEN_JAR%" %MAVEN_CONFIG%
endlocal
