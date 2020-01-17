#!/bin/bash
echo "Next NG Composer"

echo "[INFO] Cloning next_ng_presentation" 
git clone http://bitbucket.intranet.ifis.local/scm/fe/next_ng_presentation.git

echo "[INFO] Cloning next_ng_frontend"
git clone http://bitbucket.intranet.ifis.local/scm/fe/next_ng_frontend.git


cd next_ng_presentation && git fetch && git checkout -b feature/mocks remotes/origin/feature/mocks && cd it.ifis.nextng && mvn clean package spring-boot:repackage -U

cd next_ng_frontend && git fetch && git checkout -b features/next-ng-fe remotes/origin/features/next-ng-fe && cd nextng-fe && npm i

echo "[INFO] Good Job!"