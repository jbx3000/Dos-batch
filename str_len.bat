  ::call with string as %1, returns length in %errorlevel
:str-len
   setlocal
   set len=0
   set _str=%~1

:str-len-repeat-1
   if not defined _str goto strlen-break-1
   set _str=%_str:~1%
   set /a len+=1
   goto str-len-repeat-1

:strlen-break-1
   exit /b %len% & endlocal
