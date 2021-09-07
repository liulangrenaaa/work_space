#/bin/bash

echo "localfile:$1 remotefile:$2"

echo "scp $1 ubuntu@49.235.41.28:$2"
scp $1 ubuntu@49.235.41.28:$2