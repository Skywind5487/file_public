@echo off
git pull
git add .
git commit -m'NewVersion'
git push -f


set source=C:\Users\weiti\Desktop\PARA\1_project\MC\file_public
set destination=Z:\baidu\file_public

robocopy "%source%" "%destination%" /MIR /mt /z




exit /B
