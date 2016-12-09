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
