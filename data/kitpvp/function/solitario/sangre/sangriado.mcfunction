scoreboard players reset #cantidad-sangre Conteo
execute as @e[type=item_display,tag=Sangre] run scoreboard players add #cantidad-sangre Conteo 1

execute on vehicle if entity @s run particle block{block_state:"minecraft:nether_wart_block"} ~ ~ ~ 0 0 0 1 1 force
particle block_crumble{block_state:"minecraft:nether_wart_block"} ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute on vehicle if data entity @s[type=item] {OnGround:1b} run kill @s
scoreboard players add @s Conteo 1
execute if score @s Conteo matches 100.. run kill @s

execute on vehicle run return fail
execute if score #cantidad-sangre Conteo matches 50.. run kill @s