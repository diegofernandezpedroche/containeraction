#!/bin/sh -l

echo "Hello $INPUT_MYINPUT"   # uses the who-to-greet input variable to print "Hello [who-to-greet]" in the log file
memory=$(cat /proc/meminfo)      # gets the current time and sets it as an output variable that actions running later in a job can use.
#echo "::set-output name=memory::$memory" # (Deprecated) sets the action's output parameter using the workflow syntax
#echo "memory=$memory" >> $GITHUB_OUTPUT # Error: Unable to process file command 'output' successfully. // because of multilined
echo 'var<<EOF' >> $GITHUB_OUTPUT
echo "$memory" >> $GITHUB_OUTPUT
echo 'EOF' >> $GITHUB_OUTPUT
