execute unless entity @p[distance=..32] run return fail
particle block{block_state:"minecraft:nether_wart_block"} ~ ~1 ~ .1 .1 .1 1 30 force

scoreboard players set #sangron Conteo 0
execute on attacker if entity @s[type=player] run scoreboard players set #sangron Conteo 1
execute on attacker if entity @s[type=snow_golem] run scoreboard players set #sangron Conteo 1
execute on attacker if entity @s[type=iron_golem] run scoreboard players set #sangron Conteo 1
execute if score #sangron Conteo matches 0 run return fail

execute if predicate kitpvp:30 run function kitpvp:solitario/sangre/sangre
execute if predicate kitpvp:30 run function kitpvp:solitario/sangre/sangre
execute if predicate kitpvp:30 run function kitpvp:solitario/sangre/sangre
execute if predicate kitpvp:30 run function kitpvp:solitario/sangre/sangre