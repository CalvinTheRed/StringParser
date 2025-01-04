### isolate first char
data modify storage stringparser:data char set string storage stringparser:data parsing 0 1

### check negative
scoreboard players set #stringparser_scalar constant 1
execute if data storage stringparser:data {char:"-"} run scoreboard players set #stringparser_scalar constant -1
execute if data storage stringparser:data {char:"-"} run function stringparser:utils/shift_one

### seed number and begin recursion
scoreboard players set #stringparser_numberbase constant 10
scoreboard players set #stringparser_number constant 0
function stringparser:utils/recursive/append_digit

scoreboard players operation #stringparser_number constant *= #stringparser_scalar constant