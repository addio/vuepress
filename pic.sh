#!/usr/bin/env bash
#
# GitHub 图床
#
# Windows 无法执行 .sh 文件，需要安装 git 客户端
#
# Author: addio
# Email: www@addio.cn
#

# 开始
set -e

# 删除 public_temp 文件夹
rm -fr public_temp

# 复制 public 文件夹到 public_temp 文件夹
cp -ir public public_temp

# 进入 public_temp 目录
cd public_temp

# 初始化仓库
git init

# 添加
git add -A

# 提交
git commit -m update

# 推送到 pic 仓库的 master 分支
git push -f git@github.com:addio/vuepress.git master

# 返回上一级目录
cd ../

# 删除 public_temp 文件夹
rm -fr public_temp

# 结束
cd -
