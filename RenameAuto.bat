@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
SET /p old="Enter name old: "
SET /p new="Enter name new: "
for /f "tokens=*" %%f in ('dir /b *.png') do (
  SET newname=%%f
  SET newname=!newname:%old%=%new%!
  move "%%f" "!newname!"
)