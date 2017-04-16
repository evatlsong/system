#!/bin/sh
echo 'start transfer'
rsync -avru --exclude-from 'exclude_file' /Users/evatlsong/SourceCode/ /Users/evatlsong/Shares/evatlsong/SourceCodeBackup
echo 'end transfer'
