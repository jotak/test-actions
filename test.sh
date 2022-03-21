#!/bin/bash

ALLOWED_USERS="foo bar jotak baz"
login="jotak"

allowed=($ALLOWED_USERS)
for user in ${allowed[@]}; do
  echo "checking $user"
  if [[ "$login" == "$user" ]]; then
      echo "$user is a known user, proceeding to build."
      exit 0
  fi
done
echo "User $login is unknown, PR image build canceled."
exit 1
