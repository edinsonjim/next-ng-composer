#!/bin/bash
echo "Next NG Composer"

WORKDIR=$PWD

echo "[INFO] Cloning next_ng_presentation" 
git clone http://bitbucket.intranet.ifis.local/scm/fe/next_ng_presentation.git

echo "[INFO] Cloning next_ng_frontend"
git clone http://bitbucket.intranet.ifis.local/scm/fe/next_ng_frontend.git

echo "[INFO] Pulling next_ng_presentation"
cd "$WORKDIR/next_ng_presentation/" && git fetch && git checkout -b feature/mocks remotes/origin/feature/mocks
cd "$WORKDIR/next_ng_presentation/it.ifis.nextng" && mvn clean package spring-boot:repackage -U

echo "[INFO] Pulling next_ng_presentation"
cd "$WORKDIR/next_ng_frontend/" && git fetch && git checkout -b features/next-ng-fe remotes/origin/features/next-ng-fe 
cd "$WORKDIR/next_ng_frontend/nextng-fe" && npm i

echo "[INFO] Good Job!"