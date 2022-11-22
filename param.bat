@echo off

for /f "delims=" %%A in ('dir /b /os %1') do (
	move %%A %2
	cd %2
	for /f "delims=" %%i in ('dir /b /os %2') do (
		fc /b %%A %%i >> bufer.txt
	)
exit
)
