# Helpers

Collection of small shell helpers create to make life easy.

## Bash

### hlp_iterator_a 

```bash
func1 | while read a; do
 func2  param1 $a
done
```
 
```bash
func1 | help_iterator_a func2 param1
```
