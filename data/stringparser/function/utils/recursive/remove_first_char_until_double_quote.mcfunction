### isolate first char
data modify storage stringparser:data char set string storage stringparser:data parsing 0 1

### remove first char
function stringparser:utils/shift_one

### recurse unless char is `"`
execute unless data storage stringparser:data {char:"\""} run function stringparser:utils/recursive/remove_first_char_until_double_quote