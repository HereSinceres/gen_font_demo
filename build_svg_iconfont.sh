#! /bin/sh
# set -x
# 脚本出错时退出
# set -e

npx fantasticon svg-font -o lib/style/font-icon   -p sicon  --normalize

# lib/style/font-icon/icons.css
#proto replace
cssReplace(){
    if [ $(uname -s) = Darwin ]; then
        sed -i ".bak" $*
    else
        sed -i $*
    fi
}

cssReplace "s/i\[class/i\.sicon\,i\[class/" lib/style/font-icon/icons.css
cssReplace "s/line-height\:[[:space:]]*1;//" lib/style/font-icon/icons.css
 
