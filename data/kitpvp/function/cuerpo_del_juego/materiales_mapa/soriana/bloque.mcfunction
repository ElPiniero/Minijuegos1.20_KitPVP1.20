data modify storage switch_soriana bloque set value sin_color
execute if data storage switch_soriana {bloque:sin_color} if block ~ ~ ~ magenta_concrete run data modify storage switch_soriana bloque set value rojo
execute if data storage switch_soriana {bloque:rojo} run setblock ~ ~ ~ red_concrete
execute if data storage switch_soriana {bloque:sin_color} if block ~ ~ ~ red_concrete run data modify storage switch_soriana bloque set value naranja
execute if data storage switch_soriana {bloque:naranja} run setblock ~ ~ ~ orange_concrete
execute if data storage switch_soriana {bloque:sin_color} if block ~ ~ ~ orange_concrete run data modify storage switch_soriana bloque set value magenta
execute if data storage switch_soriana {bloque:magenta} run setblock ~ ~ ~ magenta_concrete