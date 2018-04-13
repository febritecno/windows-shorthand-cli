@echo off
set /P repo=masukan url remote repo: 
git init && git add . && git commit -m "init" && git remote add origin %repo%.git && git push origin master