@ECHO OFF
REM # --------------------- #
REM # (C) 2020 madoodia.com #
REM # --------------------- #

set ROOT=%1
set FOLDER=%2
set FILE_NAME=%3

@REM ------------------------------------

set PATH=%PATH%;%SDKS_LOCATION%/osl_release/bin;%SDKS_LOCATION%/osl_release/lib


if not exist "%ROOT%/%FOLDER%/%FILE_NAME%.mtd" (
  @REM del %ROOT%/%FOLDER%/%FILE_NAME%.mtd

  (
  echo [node %FILE_NAME%]    
  echo   maya.name               STRING  "%FILE_NAME%"
  echo   maya.id                 INT     0x000f0001
  echo   maya.classification		  STRING	"Shader/Surface"
  echo   maya.output_name        STRING  "outColor"
  echo   maya.output_shortname   STRING  "out"
  ) >  %ROOT%/%FOLDER%/%FILE_NAME%.mtd

)

oslc.exe -v %ROOT%/%FOLDER%/%FILE_NAME%.osl -o %ROOT%/%FOLDER%/%FILE_NAME%.oso


