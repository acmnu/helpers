hlp_hub_fetch_rebase_push_origin () {
    [[ -z "$1" ]] && echo "origin branch name expected" && return 1
	git fetch origin || return 1
    git rebase origin/$1 || return 1
    git push || return 1
    hub pull-request -b $1 || return 1
}

hlp_hub_fetch_rebase () {
    [[ -z "$1" ]] && echo "origin branch name expected" && return 1
    git rebase origin/$1 || return 1
}
