# Helpers

Collection of small shell helpers to make life easy.

## Instalation

Just source it

```bash
ls -1 /home/ac/_work/projects/acmnu@github.com/helpers/*sh | while read a; do
	echo "source $a">> $temphlp;
done;
```

## Bash

### hlp_bash_iterator

```bash
func1 | while read a; do
 func2  param1 $a
done
```
 
```bash
func1 | hlp_bash_iterator func2 param1
```

That is realy close to xargs with line separator, but I am more comfotable with while loop. 

NOTE: Remember about subshell problem!


### hlp_bash_fullpath

```bash
hlp_bash_fullpath file1
```

Equal to

```bash
echo "$(pwd)/file1"
```

## JSON

### hlp_format_json

Make json looks nice.

```bash
cat 1.json | hlp_format_json
```

You need to install json.tool python module.

## Misc

### hlp_wget_recurcive

Recurcive get with wget

Usefull for files published over apache

```bash
hlp_wget_recurcive <url> <depth>
```
