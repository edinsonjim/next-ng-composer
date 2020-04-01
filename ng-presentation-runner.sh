#!/bin/bash
echo "Next NG Presentation Runner"

cd next_ng_presentation/it.ifis.nextng/

if [[ "$1" == --build ]]
then
  mvn clean install spring-boot:repackage -U
fi

cd target && java -jar nextng-0.0.1-SNAPSHOT.jar --arch.presentation.auth.principalcreds=cHNwYWRvbmk6Y2xhcmFiZWxsYTE5Nzcu

echo "[INFO] Good Job!"
