function hlp_wget_recurcive () {
	wget -nd -r -l ${2:-1} $1
}
