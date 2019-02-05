#! /bin/bash

export TF_CONFIG='{"cluster":{"worker":["localhost:10000", "localhost:10001"], "chief":["localhost:10002"]}, "task":{"type":"worker","index":0}}'
python3 tf_std_server.py &

export TF_CONFIG='{"cluster":{"worker":["localhost:10000", "localhost:10001"], "chief":["localhost:10002"]}, "task":{"type":"worker","index":1}}'
python3 tf_std_server.py &

export TF_CONFIG='{"cluster":{"worker":["localhost:10000", "localhost:10001"], "chief":["localhost:10002"]}, "task":{"type":"chief","index":0}}'
python3 tf_std_server.py &
