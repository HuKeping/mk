#!/bin/bash

DIR=/home/ubuntu/cron

O_0=$(${DIR}/adj/adj.sh ${DIR}/adj/adjectives.txt)

BODY="
Lunch time is coming, little $O_0 zeizei!

^_^

Have a great meal!
"

echo "$BODY" | mail -s "Lunch time $O_0 zei" -r diu@dius.com -t  sophia.wang@pku.edu.cn

