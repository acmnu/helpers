function hlp_bash_iterate () {
	while read a; 
		do $@ $a; 
	done;
}
