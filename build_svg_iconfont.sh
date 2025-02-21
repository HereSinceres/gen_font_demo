#! /bin/sh
set -x
# 脚本出错时退出
set -e

# 使用命令行参数传递目录路径
# DIR=$1
DIR=lib/style/font-icon
FONT_PREFIX=your_name_font_icon

if [ -d "$DIR" ]; then
  echo "Directory $DIR exists."
else
  echo "Creating directory $DIR..."
  mkdir -p $DIR
  echo "Directory $DIR created."
fi

npx fantasticon svg-font -o $DIR   -p $FONT_PREFIX  --normalize

# $DIR/icons.css
#proto replace
cssReplace(){
    if [ $(uname -s) = Darwin ]; then
        sed -i ".bak" $*
    else
        sed -i $*
    fi
}

cssReplace "s/i\[class/i\.$FONT_PREFIX\,i\[class/" $DIR/icons.css
 