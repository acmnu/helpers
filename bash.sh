function hlp_bash_iterate () {
	while read a; 
		do $@ $a; 
	done;
}

function hlp_bash_fullpath () {
	for i in $@; do
		echo "$(pwd)/$i"
	done;
}

function hlp_until_false_or_timeout () {
	local command=${1:-false}
	local maxcount=${2:-1}
	local timeout=${3:-1}

    local result="x"
    local c=0

    while ( true ); do
        let c=c+1
        [ $c -gt $maxcount ] && result=1
        $1 >/dev/null || result=0
        [ $result != "x" ] && break
        sleep $timeout
        echo -en "."
    done
	[ $result == "1" ] && echo "  Timeout"
	[ $result == "0" ] && echo "  Failed"
    return $result
}

function hlp_column_adjust () {
	column -t 
}

function hlp_confirm_and_run () {
	echo "Do you realy want to run following command:"
	echo $*
	echo -n "Press y to run "; read -n 1 x
	echo ""
	[[ $x == "y" ]] && eval $*
}

function hlp_du_subdirs () {
    where=${1:-.}
	du -a -m --max-depth 1 $where | sort -n
}
