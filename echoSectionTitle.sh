#!/bin/bash


################################################################################
#
# This function echoes the provided text in format of a section title. It
# can be used in order to notify the user about scripts execution progress.
#
# Arguments:
#    1. the title of the section; mandatory
#
################################################################################


function echoSectionTitle() {
    if [[ -z "$1" ]] ; then
	echo "Error: first argument must be a non-empty section title!"
	return 1
    fi

    echo ""
    echo "--------------------------------------------------------------------------------"
    echo "${1}"
    echo "--------------------------------------------------------------------------------"
}
