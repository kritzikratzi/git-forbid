# Git-Forbid

A tiny git hook to stop you from committing text files containting the words `git-forbid`. 

Based on https://www.emptypath.com/git_pre_commit_testing


## Global Setup

Clone this repostory to `~/git-hooks` and then run 

	git config --global core.hooksPath ~/git-hooks

## Test it out

	echo "/* git-forbid */ \n#define somethingawefull" >testfile.txt
	git add testfile.txt
	
	# commit should fail! 
	git commit
	
	# Output: 
	Git-Forbid messages found!
	Please remove the following: 
	-----------------------------
	testfile.txt:1: /* git-forbid */
	-----------------------------
	Error found, aborting commit
	
	
## Disabling git-forbid for a single commit 

	git commit --no-verify