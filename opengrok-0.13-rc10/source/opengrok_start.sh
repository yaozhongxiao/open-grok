#!/bin/sh
#****************************************************************#
# ScriptName: opengrok_start.sh
# Author: zhongxiao.yzx
# Create Date: 2018-08-22
#***************************************************************#

OPEN_SOURE_DIR=/home/zhongxiao.yzx/workspace/open_source
OPENGROK_TOMCAT_BASE=${OPEN_SOURE_DIR}/apache-tomcat-9.0.10

echo ""
echo "$0 try to start tomcat in ${OPENGROK_TOMCAT_BASE}"
if [ ! -d $OPENGROK_TOMCAT_BASE ];then
    echo "can not find tomcat in ${OPENGROK_TOMCAT_BASE}"
    exit
fi

${OPENGROK_TOMCAT_BASE}/bin/shutdown.sh
${OPENGROK_TOMCAT_BASE}/bin/startup.sh
