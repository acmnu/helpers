hlp_gerrit_push () {
	git show --name-status
	repo_and_branch=$(git branch | awk '/^\*.*detached/ {print $5}' | sed 's:)::g')
	repo=${repo_and_branch%%/*}
	branch=${repo_and_branch#${repo}/}
	bug=$(git show | awk '/Closes-Bug/ {print $2}' | sed 's:#::g')

	cmd="git push $repo HEAD:refs/for/$branch/bug/$bug"
	echo ""
	hlp_confirm_and_run $cmd
}
