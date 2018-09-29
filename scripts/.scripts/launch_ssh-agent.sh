#!/bin/bash
if ! pgrep -x 'ssh-agent' > /dev/null
then
    eval $(ssh-agent)
fi
