@echo off
cd /d "%~dp0"
echo Compiling scanner...
"C:\Program Files\Java\jdk-26.0.1\bin\javac.exe" -cp "lib\guava.jar" -d out src\com\mike\*.java src\com\mike\extracted\*.java src\com\mike\recreated\*.java
if errorlevel 1 (
  echo.
  echo Compilation failed.
  pause
  exit /b 1
)

echo.
echo Starting scanner...
java -cp "out;lib\guava.jar" com.mike.Engine
echo.
echo Scanner stopped.
pause
