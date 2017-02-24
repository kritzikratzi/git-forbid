# Git-Forbid

A tiny git hook to stop you from committing text files containting the words `git-forbid`. 

Originally based on https://www.emptypath.com/git_pre_commit_testing


## Global Setup

Clone this repostory to `~/git-hooks` and then run 

	git config --global core.hooksPath ~/git-hooks

## Test it out

	git init
	echo "/* git-forbid */ \n#define somethingawefull" >testfile.txt
	git add testfile.txt
	
	# try to commit 
	git commit
	
	# Output: 
	git-forbid messages found. 
	-----------------------------
	test.txt:git-forbid
	-----------------------------
	Errors found, aborting commit. 
	To fix this, edit and stage the files.
	To ignore this error, use: git commit --no-verify
	
	
## Disabling git-forbid for a single commit 

Use can disable git hooks for a single command by using 

	git commit --no-verify