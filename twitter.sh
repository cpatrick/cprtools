#!/bin/bash

curl --basic --user "user:pass" --data-ascii "status=`echo $@|tr ' ' '+'`" "http://twitter.com/statuses/update.json"
