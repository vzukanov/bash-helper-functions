#!/bin/bash


################################################################################
#
# This function returns the full path to the directory where the currently
# executing Bash script is located.
#
# Arguments:
#    1: the name of the variable that the function will assign with the result; mandatory
#
################################################################################


function getFullPathToCurrentScriptDir() {
    
    if [[ -z "$1" ]] ; then
	echo Error: first argument to getFullPathToCurrentScriptDir is empty! Must be a name of the variable to assign the result to
	return 1
    fi    
    
    local __resultVariable=$1
    
    local __pathToDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

    eval $__resultVariable="'__pathToDir'"    
}

