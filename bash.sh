function hlp_bash_iterate_a () {
	while read a; 
		do $@ $a; 
	done;
}
