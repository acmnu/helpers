# Helpers

Collection of small shell helpers create to make life easy.

## Bash

### hlp_iterator

```bash
func1 | while read a; do
 func2  param1 $a
done
```
 
```bash
func1 | help_iterator func2 param1
```
