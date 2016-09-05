# Helpers

Collection of small shell helpers create to make life easy.

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
