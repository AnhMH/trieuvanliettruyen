@echo off
taskkill /f /im nginx.exe
taskkill /f /im java.exe
mysql5.5\bin\mysqladmin.exe -uroot -proot -P3306 shutdown
ping 127.0.0.1>nul
