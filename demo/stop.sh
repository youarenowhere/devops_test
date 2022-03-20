#!/bin/bash
jar_name='HelloPipline'
echo "Stopping" ${jar_name}
pid= `ps -ef | grep ${jar_name} | awk '{print $2}'`
if [ -n "$pid" ]
then
echo "kill -9 的pid:" $pid
kill - 9 $pid
fi
