@echo off
set /P co=pesan commit: 
set /P bra=cabang: 
git add . && git commit -m "%co%" && git push origin %bra%