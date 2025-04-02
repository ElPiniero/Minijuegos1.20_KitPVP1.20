schedule function kitpvp:solitario/hordas/oleada/mini_ola_trigger 1t
scoreboard players set #mini_ola Conteo 1
execute if score #mini_ola Conteo matches 125.. run scoreboard players reset @s Conteo

execute if score #mini_ola Conteo matches 1..25 run scoreboard players set #zombis Conteo 0
execute if score #mini_ola Conteo matches 1..25 as @e[type=#zombies] run scoreboard players add #zombis Conteo 1
execute if score #mini_ola Conteo matches 1..25 if score #zombis Conteo matches 100.. run return fail

execute if score #mini_ola Conteo matches 1..25 run tag @r[tag=!sesion_no_iniciada,gamemode=!spectator] add target

execute unless data storage modo_de_pvp {Mapa:"habitacion"} if score #mini_ola Conteo matches 1..25 at @p[tag=target] positioned ~ 40 ~ run function kitpvp:solitario/hordas/invocar_zombis
execute if data storage modo_de_pvp {Mapa:"habitacion"} if score #mini_ola Conteo matches 1..25 at @p[tag=target] positioned ~ 150 ~ run function kitpvp:solitario/hordas/invocar_zombis

execute if score #mini_ola Conteo matches 1..25 as @n[type=#zombies,tag=nuevo] at @s run function kitpvp:solitario/hordas/oleada/rotar_zombis

execute unless data storage modo_de_pvp {Mapa:"habitacion"} if score #mini_ola Conteo matches 1..25 as @n[type=#zombies,tag=nuevo] at @s run function kitpvp:solitario/hordas/oleada/pre-spread
execute unless data storage modo_de_pvp {Mapa:"habitacion"} if score #mini_ola Conteo matches 1..25 as @n[type=#zombies,tag=nuevo] run damage @s 1 player_attack by @r[tag=!sesion_no_iniciada,gamemode=!spectator]
execute if data storage modo_de_pvp {Mapa:"habitacion"} if score #mini_ola Conteo matches 1..25 as @n[type=#zombies,tag=nuevo] at @s run function kitpvp:solitario/hordas/oleada/regresar_mapa_hab

execute if score #mini_ola Conteo matches 1..25 run tag @a remove target
execute if score #mini_ola Conteo matches 1..25 run tag @n[type=#zombies,tag=nuevo] remove nuevo

#
#execute at @r[tag=!sesion_no_iniciada,gamemode=!spectator] run spreadplayers ~ ~ 1 40 under 140 false @e[type=#zombies,tag=nuevo]
#execute as @e[type=#zombies,tag=nuevo] at @s if entity @p[tag=!sesion_no_iniciada,gamemode=!spectator,distance=..32] run tag @s add cerca
#execute as @e[type=#zombies,tag=nuevo] at @s if entity @p[tag=!sesion_no_iniciada,gamemode=!spectator,distance=33..40] run tag @s add lejos
#execute as @e[type=#zombies,tag=nuevo,tag=cerca] at @n[type=#zombies,tag=nuevo,tag=lejos,sort=random] run tp @s ~ ~ ~
#execute as @e[type=#zombies,tag=nuevo] run attribute @s follow_range base set 40
#tag @e[type=#zombies] remove cerca
#tag @e[type=#zombies] remove lejos
#tag @e[type=#zombies] remove nuevo


#scoreboard players set #lideres-ola Conteo 0
#execute as @e[type=#zombies,tag=lider-ola] run scoreboard players add #lideres-ola Conteo 1
#execute if score #lideres-ola Conteo matches 4.. run return fail
#execute at @n[type=interaction,tag=Zombi-spawn,sort=random] run function kitpvp:solitario/hordas/oleada/mini_ola