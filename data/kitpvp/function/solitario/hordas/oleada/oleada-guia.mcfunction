tag @s remove jinete
execute on vehicle on vehicle on passengers on passengers run tag @s add jinete
execute as @s[tag=!jinete] run return run function kitpvp:solitario/hordas/oleada/limpiar-oleada

execute as @e[type=#zombies] at @s on target if entity @s[type=endermite] run effect give @n[type=#zombies] slow_falling 5 0 true

scoreboard players set #limpiar Conteo 0
execute if entity @p[gamemode=adventure,distance=..16] run scoreboard players set #limpiar Conteo 1
execute on vehicle on vehicle on target if entity @s[type=endermite] run scoreboard players set #limpiar Conteo 1
execute if score #limpiar Conteo matches 1 run function kitpvp:solitario/hordas/oleada/limpiar-oleada