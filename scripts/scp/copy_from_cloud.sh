#/bin/bash

echo "remotefile:$1 localfile:$2"

echo "scp ubuntu@49.235.41.28:$1 $2"
scp ubuntu@49.235.41.28:$1 $2