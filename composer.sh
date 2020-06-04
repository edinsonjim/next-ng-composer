#!/bin/bash
echo "Next NG Composer"

WORKDIR=$PWD

echo "[INFO] Updating dependencies"

nvm install v10.16.2

echo "[INFO] Cloning next_ng_presentation" 
git clone http://bitbucket.intranet.ifis.local/scm/fe/next_ng_presentation.git

echo "[INFO] Cloning next_ng_frontend"
git clone http://bitbucket.intranet.ifis.local/scm/fe/next_ng_frontend.git

echo "[INFO] Pulling next_ng_presentation"
cd "$WORKDIR/next_ng_frontend/" && git fetch && git checkout -b features/next-ng-fe origin/features/next-ng-fe
cd "$WORKDIR/next_ng_frontend/nextng-fe" && npm install

echo "[INFO] Pulling next_ng_presentation"
cd "$WORKDIR/next_ng_presentation/" && git fetch && git checkout -b features/next-ng-fe origin/features/next-ng-fe

echo "[INFO] Good Job!"