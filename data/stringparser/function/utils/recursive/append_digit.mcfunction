### isolate first char
data modify storage stringparser:data char set string storage stringparser:data parsing 0 1

### identify digit (default to -1 for invalid)
scoreboard players set #stringparser_digit constant -1
execute if data storage stringparser:data {char:"0"} run scoreboard players set #stringparser_digit constant 0
execute if data storage stringparser:data {char:"1"} run scoreboard players set #stringparser_digit constant 1
execute if data storage stringparser:data {char:"2"} run scoreboard players set #stringparser_digit constant 2
execute if data storage stringparser:data {char:"3"} run scoreboard players set #stringparser_digit constant 3
execute if data storage stringparser:data {char:"4"} run scoreboard players set #stringparser_digit constant 4
execute if data storage stringparser:data {char:"5"} run scoreboard players set #stringparser_digit constant 5
execute if data storage stringparser:data {char:"6"} run scoreboard players set #stringparser_digit constant 6
execute if data storage stringparser:data {char:"7"} run scoreboard players set #stringparser_digit constant 7
execute if data storage stringparser:data {char:"8"} run scoreboard players set #stringparser_digit constant 8
execute if data storage stringparser:data {char:"9"} run scoreboard players set #stringparser_digit constant 9

### attempt concatenation
execute if score #stringparser_digit constant matches 0.. run scoreboard players operation #stringparser_number constant *= #stringparser_numberbase constant
execute if score #stringparser_digit constant matches 0.. run scoreboard players operation #stringparser_number constant += #stringparser_digit constant

### attempt recurse
execute if score #stringparser_digit constant matches 0.. run function stringparser:utils/shift_one
execute if score #stringparser_digit constant matches 0.. run function stringparser:utils/recursive/append_digit