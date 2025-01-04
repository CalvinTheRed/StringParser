### clear output
data remove storage stringparser:data output

### begin parse
data modify storage stringparser:data input set string block ~ ~ ~ LastOutput

### isolate the `extra` portion of the text
data modify storage stringparser:data parsing set string storage stringparser:data input 31 -2

### check for success
data modify storage stringparser:data locate.successful set string storage stringparser:data parsing 2 11
execute if data storage stringparser:data {locate:{successful:"translate"}} run function stringparser:locate/structure/success
execute unless data storage stringparser:data {locate:{successful:"translate"}} run function stringparser:locate/structure/failure