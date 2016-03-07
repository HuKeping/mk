#!/bin/bash

DIR=/home/ubuntu/cron

O_0=$(${DIR}/adj/adj.sh ${DIR}/adj/adjectives.txt)

BODY="
Good morning, $O_0 zei.

Have a nice day!
"

echo "$BODY" | mail -s "Good morning $O_0 zei" -r diu@dius.com -t  sophia.wang@pku.edu.cn
