#!/bin/sh -l

echo "Hello $1"   # uses the who-to-greet input variable to print "Hello [who-to-greet]" in the log file
systemmemory=$(cat /proc/meminfo)      # gets the current time and sets it as an output variable that actions running later in a job can use.
#echo "::set-output name=time::$time" # (Deprecated) sets the action's output parameter using the workflow syntax
echo "systemmemory=$systemmemory" >> $GITHUB_OUTPUT
