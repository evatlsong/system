#!/bin/bash
# 递归目录查找文件
# 若是文件则计算他的md5 根据md5在目标目录检测并建立文件夹 并将文件拷贝过去 

target="$2"
md5:cp() {
    echo "$1 >> $2"
    cp "$1" "$2"
}

md5:cpfolder() {
    src=$1
    for file in ${src}/*
    do
    if [ -d "$file" ]
    then
      echo "$file is directory"
      md5:cpfolder $file
    elif [ -f "$file" ]
    then
      echo "$file is file"
        echo `md5sum $file | cut -d ' ' -f1`
        hash=`md5sum $file | cut -d ' ' -f1`
        subfolder=${hash:0:2}
        fileName=${hash:2}
        destfolder="${target}/${subfolder}"
        if [ ! -d "${destfolder}" ]; then
            echo "mkdir foler ${destfolder}"
            mkdir -p "${destfolder}"
        fi
        if [ -f "${destfolder}/${fileName}.${file##*.}" ]; then 
            continue
        fi
        md5:cp "$file" "${destfolder}/${fileName}.${file##*.}"
    fi
    done
}

md5:cpfolder "$1"
