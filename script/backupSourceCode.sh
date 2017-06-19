#!/bin/sh
echo 'start transfer'
rsync -avru --delete --exclude-from 'exclude_file' /Users/evatlsong/SourceCode/ /Users/evatlsong/Shares/evatlsong/SourceCodeBackup
echo 'end transfer'
