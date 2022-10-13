#!/bin/bash
echo -n "Enter your date of birth YYYY-MM-DD: "
read BIRTHDAY
BIRTHDAY=${BIRTHDAY#*-}
TODAY=$(date -I)
TODAY=${TODAY#*-}
if test $BIRTHDAY = $TODAY
then
echo "Happy Birthday!"
STATUS=0
else
STATUS=1
fi
exit $STATUS
