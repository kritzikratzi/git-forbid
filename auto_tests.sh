#!/bin/sh

# Copyright Joshua Simmons
#
# https://www.emptypath.com/git_pre_commit_testing
#
# Available under the BSD3 license, which can be found in the
# LICENSE file in the same directory as this file.

# Change the following commands to run your
# personalized tests.
#
# It should return non-zero if an error is found.
# What exactly an error is depends on your content
# and your judgement.
#
# If you have multiple testing commands to run,
# you can either chain them together with &&
# or you can add them below the `if` block
# and *copy* the `if` block below your new command.
res="`grep --color=always --exclude-dir={.bzr,CVS,.git,.hg,.svn} -irnH "git-forbid" *`"

if [[ -z "${res// }" ]]
then
	exit 0
else
	echo "Git-Forbid messages found!"
	echo "Please remove the following: "
	echo "-----------------------------"
	echo "$res"
	echo "-----------------------------"
	exit 1
fi

