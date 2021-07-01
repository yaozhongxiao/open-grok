#!/bin/sh
#****************************************************************#
# ScriptName: opengrok_deploy.sh 
# Author: zhongxiao.yzx
# Create Date: 2018-08-22
#***************************************************************#
exec="" # echo | ""

echo "$0 webapp (webapp default is 'myapp')"

opengrok_webappname="mychain"
if [ ! -z $1 ];then
    opengrok_webappname=$1
fi

SCRIPT_DIR="$(cd "$(dirname "$0")"; pwd -P)"
OPEN_SOURE_DIR=${SCRIPT_DIR}/../../
OPENGROK_TOMCAT_BASE=${OPEN_SOURE_DIR}/apache-tomcat-9.0.10
OPENGROK_BASE=${OPEN_SOURE_DIR}/opengrok-0.13-rc10
OPENGROK_WEBAPP=mychain.war

echo ""
echo "$0 try to deploy $opengrok_webappname in ${OPENGROK_TOMCAT_BASE}"
if [ ! -d $OPENGROK_TOMCAT_BASE ];then
    echo "can not find tomcat in ${OPENGROK_TOMCAT_BASE}"
    exit
fi

echo "cp -r $OPENGROK_BASE/lib/$OPENGROK_WEBAPP $OPENGROK_TOMCAT_BASE/webapps/${opengrok_webappname}.war"
$exec cp -r $OPENGROK_BASE/lib/$OPENGROK_WEBAPP $OPENGROK_TOMCAT_BASE/webapps/${opengrok_webappname}.war
echo ""
