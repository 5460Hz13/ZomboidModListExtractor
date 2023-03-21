@echo off
setlocal enabledelayedexpansion

set folderList=
for /d %%f in (*) do (
  set folderList=!folderList!%%f;
)

echo %folderList% > folderList.txt

echo Folder names copied to folderList.txt