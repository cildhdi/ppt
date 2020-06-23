#!/bin/sh

for lang in `ls -F | grep "/$"`; do
    testLang=${lang%*/}
    tag=ppt_$testLang
    docker build $lang -t $tag
    docker run -it --env PPT_LANG=$testLang $tag:latest
done