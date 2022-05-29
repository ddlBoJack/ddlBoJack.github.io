#!/bin/zsh
# usage: ./push.sh msg
msg="update `date`"         #git commit的备注信息

git init
git add .

if [ $# -eq 1 ];then
  msg = "$1"
fi
git commit -m "$msg"
git remote add origin git@github.com:ddlBoJack/ddlBoJack.github.io.git    #添加仓库源
git push -f origin master  #强制推送到GitHub
if [ $? -eq 0 ];then
        echo "Update success to Github！"
fi
