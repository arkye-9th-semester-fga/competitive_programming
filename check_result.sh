#!/bin/sh

DIFF="$(diff $1 $2)"
if [ ! "$DIFF" ]; then
	echo "\nRESULT --> [PASSED!]\n==========================="
else
	echo "\nRESULT --> [FAILED!]"
	echo "$DIFF\n==========================="
fi
