#!/bin/bash
result=$(docker ps | grep "ccr.ccs.tencentyun.com/bmft/cicd01")
if [[ "$result" != "" ]]
then
echo "stop http-demo"
docker stop http-demo
fi
result1=$(docker ps -a | grep "ccr.ccs.tencentyun.com/bmft/cicd01")
if [[ "$result1" != "" ]]
then
echo "rm http-demo"
docker rm http-demo
fi
result2=$(docker images | grep "ccr.ccs.tencentyun.com/bmft/cicd01")
if [[ "$result2" != "" ]]
then
echo "remove images"
docker rmi ccr.ccs.tencentyun.com/bmft/cicd01
fi
