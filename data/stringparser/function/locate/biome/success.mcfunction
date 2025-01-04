### set output status to error
data modify storage stringparser:data output.status set value "done"

### trim text from front of string
data modify storage stringparser:data parsing set string storage stringparser:data parsing 64

### trim head until double quote
function stringparser:utils/recursive/remove_first_char_until_double_quote

### trim text until coords
data modify storage stringparser:data parsing set string storage stringparser:data parsing 85

### get x coord
function stringparser:utils/extract_number
execute store result storage stringparser:data output.x int 1 run scoreboard players get #stringparser_number constant

### skip y coord
function stringparser:utils/recursive/remove_first_char_until_double_quote
function stringparser:utils/recursive/remove_first_char_until_double_quote
function stringparser:utils/shift_one

### get z coord
function stringparser:utils/extract_number
execute store result storage stringparser:data output.z int 1 run scoreboard players get #stringparser_number constant

### Trim head until next set of coords
data modify storage stringparser:data parsing set string storage stringparser:data parsing 149
function stringparser:utils/recursive/remove_first_char_until_double_quote
data modify storage stringparser:data parsing set string storage stringparser:data parsing 19

### get distance
function stringparser:utils/extract_number
execute store result storage stringparser:data output.distance int 1 run scoreboard players get #stringparser_number constant