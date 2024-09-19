scoreboard players add @s Encender_Creeper 1
execute if score @s Encender_Creeper matches 1.. run particle smoke ~ ~1 ~ .2 .5 .2 .1 1 force
execute if score @s Encender_Creeper matches 1 run playsound entity.creeper.primed master @a ~ ~ ~ 2 0
execute if score @s Encender_Creeper matches 1..2 run title @s actionbar [{"text": "|","color": "green","bold": true},{"text": "|||||||||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 3..5 run title @s actionbar [{"text": "||","color": "green","bold": true},{"text": "||||||||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 6..8 run title @s actionbar [{"text": "|||","color": "green","bold": true},{"text": "|||||||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 9..11 run title @s actionbar [{"text": "||||","color": "green","bold": true},{"text": "||||||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 12..14 run title @s actionbar [{"text": "|||||","color": "green","bold": true},{"text": "|||||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 15..17 run title @s actionbar [{"text": "||||||","color": "green","bold": true},{"text": "||||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 18..20 run title @s actionbar [{"text": "|||||||","color": "green","bold": true},{"text": "|||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 21..23 run title @s actionbar [{"text": "||||||||","color": "green","bold": true},{"text": "||","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 24..26 run title @s actionbar [{"text": "|||||||||","color": "green","bold": true},{"text": "|","color": "red","bold": true}]
execute if score @s Encender_Creeper matches 27..30 run title @s actionbar [{"text": "||||||||||","color": "green","bold": true}]
execute if score @s Encender_Creeper matches 31 run particle explosion_emitter ~ ~1.4 ~ .3 .3 .3 1 5 force
execute if score @s Encender_Creeper matches 31 run particle flash ~ ~1.4 ~ 1 1 1 1 100 force
execute if score @s Encender_Creeper matches 31 run particle poof ~ ~ ~ .1 .1 .1 .5 500 force
execute if score @s Encender_Creeper matches 31 run playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10 0.7
execute if score @s Encender_Creeper matches 31 run tag @s add leatine
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=..1,tag=!Creeper] run damage @s 45 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=..1,tag=Creeper] run damage @s 15 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=1..2] run damage @s 40 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=1..3] run damage @s 35 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=1..4] run damage @s 28 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=1..5] run damage @s 20 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=1..6] run damage @s 14 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run execute as @e[type=!#kitpvp:inmunes,distance=1..7] run damage @s 7 player_explosion by @a[tag=leatine,limit=1]
execute if score @s Encender_Creeper matches 31 run tag @s remove leatine
execute if score @s Encender_Creeper matches 31 run clear @s gunpowder[custom_name='[{"text":"Polvora caliente","italic":false,"color":"gold"}]'] 1
execute if score @s Encender_Creeper matches 50.. run scoreboard players reset @s Encender_Creeper