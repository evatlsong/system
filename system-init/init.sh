#!/bin/bash

# 选择平台
# 初始化共同的部分


PS3="Which script do you want to run: "
select var in $(cd reset;ls *.sh) 'all of them';do
  case $REPLY in
  [1-5])
    bash ./reset/$var
    exit
    ;;
  6)
    echo $(ls reset/*.sh) | xargs -n 1 bash
    exit
    ;;
  *)
    echo "wrong action,try again!"
    ;;
  esac
done
