#! /bin/sh
set -x
# 脚本出错时退出
set -e

# 使用命令行参数传递目录路径
# DIR=$1
DIR=lib/style/font-icon

if [ -d "$DIR" ]; then
  echo "Directory $DIR exists."
else
  echo "Creating directory $DIR..."
  mkdir -p $DIR
  echo "Directory $DIR created."
fi

npx fantasticon svg-font -o $DIR   -p sicon  --normalize

# $DIR/icons.css
#proto replace
cssReplace(){
    if [ $(uname -s) = Darwin ]; then
        sed -i ".bak" $*
    else
        sed -i $*
    fi
}

cssReplace "s/i\[class/i\.sicon\,i\[class/" $DIR/icons.css
 