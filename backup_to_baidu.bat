@echo off
git pull
git add .
git commit -m'NewVersion'
git push -f

set source=C:\Users\weiti\Desktop\PARA\1_project\MC\file_public
set destination=Z:\baidu\file_public

:: 建立一個應該被排除的文件列表
set excludeFiles="C:\Users\weiti\Desktop\PARA\1_project\MC\file_public\.gitattributes" "C:\Users\weiti\Desktop\PARA\1_project\MC\file_public\.gitignore" "C:\Users\weiti\Desktop\PARA\1_project\MC\file_public\README.md" "C:\Users\weiti\Desktop\PARA\1_project\MC\file_public\backup_to_baidu.bat"

:: 建立一個應該被排除的目錄列表
set excludeDirs="C:\Users\weiti\Desktop\PARA\1_project\MC\file_public\.git"

:: 使用 /XF 和 /XD 選項來排除文件和目錄
robocopy "%source%" "%destination%" /MIR /mt /z /XF %excludeFiles% /XD %excludeDirs%

exit /B
