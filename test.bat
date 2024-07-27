
@echo off  
setlocal EnableDelayedExpansion

set /a _result=%1 * %2
echo initial result is %_result%

call ..\lib\str_len.bat %_result%
set /a _strlen=%errorlevel%
echo _strlen return value is %_strlen%

set /a _difference=%_strlen%-%3
echo _difference is %_difference% & echo.

if %_difference% leq 0 (
  for /L %%G in (0, -1, %_difference%) do (
    echo G = %%G
    echo operand = !_operand!
    if %%G equ %_difference% ( set _operand=.!_operand!) else set _operand=0!_operand!
    echo end pass & echo.
  )
  set _result=!_operand!!_result!
) else (

  echo difference --^> %_difference%
  if %3 neq 0 set _result=!_result:~0,%_difference%!.!_result:~%_difference%!
  echo result is !_result!
)

echo result is %_result%

endlocal
exit /b 








