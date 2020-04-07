#!/bin/bash

echo "Next NG Presentation Runner"

cd ./it.ifis.nextng

user="agollini"
principalcreds="YWdvbGxpbmk6TWFyem8yMDIwOk9QRVJBVE9S"

usage() {
  echo "usage: bash runner.sh [-h|--help] [-u|--user <user>] [--build] "
} 

run_jar() {
  echo "[RUNNER] [INFO] Running .jar with credentials $user:$principalcreds"
  cd target && java -jar nextng-3.52.0-SNAPSHOT.jar --arch.presentation.auth.principalcreds=$principalcreds
}

define_credentials() {
  case $user in
    agollini )        principalcreds="YWdvbGxpbmk6TWFyem8yMDIwOk9QRVJBVE9S" ;;
    pspadoni )        principalcreds="cHNwYWRvbmk6Y2xhcmFiZWxsYTE5NzcuOkNMSUVOVA==" ;;
    ext.fmanici )     principalcreds="ZXh0LmZtYW5pY2k6R2VubmFpbzIwMjA6T1BFUkFUT1I=" ;;
    ext.glagamba ) principalcreds="ZXh0LmdsYWdhbWJhOkZlYmJyYWlvMjAyMDpPUEVSQVRPUg==" ;;
  esac
} 

build() {
  echo "[RUNNER] [INFO] mvn clean install"
  mvn clean install spring-boot:repackage -U
} 

while [ "$1" != "" ]; do
    case $1 in
        -u | --user )           shift
                                user=$1
                                define_credentials
                                ;;
        -b | --build )          shift
                                build
                                ;;
        -h | --help )           usage
                                exit
                                ;;
    esac
    shift
done

run_jar

# ext.fmanici:OPERATOR
# ZXh0LmZtYW5pY2k6R2VubmFpbzIwMjA6T1BFUkFUT1I=

# pspadoni:CLIENT
# cHNwYWRvbmk6Y2xhcmFiZWxsYTE5NzcuOkNMSUVOVA==

# agollini:Marzo2020:OPERATOR
# YWdvbGxpbmk6TWFyem8yMDIwOk9QRVJBVE9S
