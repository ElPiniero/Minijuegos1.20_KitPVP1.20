schedule function kitpvp:solitario/hordas/oleada/mini_ola_trigger 5s
scoreboard players set #lideres-ola Conteo 0
execute as @e[type=#zombies,tag=lider-ola] run scoreboard players add #lideres-ola Conteo 1
execute if score #lideres-ola Conteo matches 4.. run return fail
execute at @n[type=interaction,tag=Zombi-spawn,sort=random] run function kitpvp:solitario/hordas/oleada/mini_ola