scoreboard players set #jefes Conteo 0
execute as @e[type=#zombies,tag=jefes,distance=..25] run scoreboard players add #jefes Conteo 1 
attribute @s movement_speed base set .42
execute if score #jefes Conteo matches 20.. run attribute @s movement_speed base set .6