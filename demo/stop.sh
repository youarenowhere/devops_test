#!/bin/bash
jar_name='demo-0.0.1-SNAPSHOT.jar'
echo "Stopping" ${jar_name}
pid=`ps -ef |grep ${jar_name} | grep -v grep | awk '{print $2}'`
echo "查询到的Pid为" ${pid}
if [ -n "$pid" ]
then
echo "kill -9 的pid:" $pid
kill -9 $pid
fi



