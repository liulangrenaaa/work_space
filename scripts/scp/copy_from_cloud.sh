#/bin/bash

ping 49.235.41.28 -c 5
echo "remotefile:$1 localfile:$2"

echo "scp ubuntu@49.235.41.28:$1 $2"
scp -P 6000 ubuntu@49.235.41.28:$1 $2
