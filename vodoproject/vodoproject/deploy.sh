#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_ed25519 \
    target/sweater-1.0-SNAPSHOT.jar \
   ILYA@94.180.110.19:/home/

echo 'Restart server...'

ssh -i ~/.ssh/id_ed25519 ILYA@94.180.110.19 << EOF

pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &

EOF

echo 'Bye'