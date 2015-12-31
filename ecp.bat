@echo off

rem if [%1]==[] (
rem    echo usage: just give me a date string  in the format "mm/dd/yyy"
rem    goto end
rem    )

set logDate=%date:~4,2%_%date:~7,2%_%date:~10,4%
set  h=%TIME:~0,2%
set  m=%TIME:~3,2%
set  s=%TIME:~6,2%
set us=%TIME:~9,2%

if /I "%h%"==" 0" (
 set h=00
)

if /I "%h%"==" 1" (
 set h=01
)

if /I "%h%"==" 2" (
 set h=02
 )

if /I "%h%"==" 3" (
 set h=03
 )
      
if /I "%h%"==" 4" ( 
 set h=04
 )

if /I "%h%"==" 5" (
 set h=05
 )

if /I "%h%"==" 6" ( 
 set h=06
 ) 
  
if /I "%h%"==" 7" ( 
 set h=07
 )

if /I "%h%"==" 8" ( 
 set h=08
 )

if /I "%h%"==" 9" ( 
 set h=09
 ) 

set logTime=%h%_%m%_%s%_%us%

git add *
sleep 2
git commit -m "%logDate%_%logTime%" *
sleep 2
git push


:end