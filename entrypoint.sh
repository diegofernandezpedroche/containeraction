#!/bin/sh -l

echo "Hello $INPUT_MYINPUT"   # uses the who-to-greet input variable to print "Hello [who-to-greet]" in the log file
memory=$(cat /proc/meminfo)      # gets the current time and sets it as an output variable that actions running later in a job can use.
#echo "::set-output name=memory::$memory" # (Deprecated) sets the action's output parameter using the workflow syntax
#echo "memory=$memory" >> $GITHUB_OUTPUT # Error: Unable to process file command 'output' successfully. // because of multilined
# https://docs.github.com/en/actions/using-workflows/workflow-commands-for-github-actions#multiline-strings
# and finally used: https://github.com/orgs/community/discussions/26288#discussioncomment-3876281
mymemory="$(openssl rand -hex 8)"
echo "output-name<<${delimiter}" >> "${GITHUB_OUTPUT}"
echo "$memory" >> "${GITHUB_OUTPUT}"
echo "${mymemory}" >> "${GITHUB_OUTPUT}"
