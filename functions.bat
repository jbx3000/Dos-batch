setlocal EnableDelayedExpansion

call %*
exit /b

:exit_1
echo exiting with errorlevel 1

endlocal
exit /b 1

:exit_22
echo exiting with errorlevel 22

endlocal
exit /b 22

:exit_13
echo exiting with errorlevel 13
echo %1
echo %2
echo %3

endlocal
exit /b 13


