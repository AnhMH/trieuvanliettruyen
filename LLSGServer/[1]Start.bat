@echo Chay Server。。。。。。。
@echo off
color 1f
set JAVA_HOME=%cd%\jdk7
set PATH=%PATH%;%JAVA_HOME%\BIN
set classpath=.;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar;%JAVA_HOME%\lib\dt.jar;

echo MySQL
cd mysql5.5
start bin\mysqld.exe --no-defaults --port=3306
ping 127.0.0.1>nul

cd ..\nginx
start nginx.exe
ping 127.0.0.1>nul

cd ..\server
start "Server" java -cp ./bin;./lib/* -DServerCode=sgs1 com.game.ServerDaemon
cd ..\tomcat6\bin
startup.bat
pause