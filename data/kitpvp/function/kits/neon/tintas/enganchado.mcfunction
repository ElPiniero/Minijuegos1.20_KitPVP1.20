scoreboard players add @s Enganchado 1
execute if score @s Enganchado matches 1.. at @s run particle dust{color:[0.812,0.000,0.706],scale:1} ~ ~1 ~ .35 .5 .35 0 2 force
execute if score @s Enganchado matches 1.. run effect give @s slowness 1 5 false
execute if score @s Enganchado matches 1.. run attribute @s jump_strength base set 0
execute if score @s Enganchado matches 1 run tag @s add enganchado
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 1 run playsound block.deepslate.break master @a ~ ~ ~ 1 1
execute if score @s Enganchado matches 200.. run tag @s remove enganchado
execute if score @s Enganchado matches 200.. run attribute @s jump_strength base set .4
execute if score @s Enganchado matches 200.. run scoreboard players reset @s Enganchado