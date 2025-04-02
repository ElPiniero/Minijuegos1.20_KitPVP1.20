tag @r[tag=!sesion_no_iniciada,gamemode=!spectator] add target

execute unless data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] run tp @s ~ 40 ~
function kitpvp:solitario/hordas/oleada/rotar_zombis

execute unless data storage modo_de_pvp {Mapa:"habitacion"} run function kitpvp:solitario/hordas/oleada/pre-spread
execute unless data storage modo_de_pvp {Mapa:"habitacion"} run damage @s 1 player_attack by @r[tag=!sesion_no_iniciada,gamemode=!spectator]

execute if data storage modo_de_pvp {Mapa:"habitacion"} run function kitpvp:solitario/hordas/oleada/regresar_mapa_hab

tag @a remove target
tag @s remove sin_target
#

#tag @s add sin-target
#execute at @r[tag=!sesion_no_iniciada,gamemode=!spectator] run spreadplayers ~ ~ 1 40 under 140 false @s
#execute as @e[type=#zombies,tag=sin-target] at @s if entity @p[tag=!sesion_no_iniciada,gamemode=!spectator,distance=..32] run tag @s add cerca
#execute as @e[type=#zombies,tag=sin-target] at @s if entity @p[tag=!sesion_no_iniciada,gamemode=!spectator,distance=33..40] run tag @s add lejos
#execute as @e[type=#zombies,tag=sin-target,tag=cerca] at @n[type=#zombies,tag=sin-target,tag=lejos,sort=random] run tp @s ~ ~ ~
#tag @e[type=#zombies] remove cerca
#tag @e[type=#zombies] remove lejos
#tag @e[type=#zombies] remove sin-target


#execute at @s if entity @p[gamemode=adventure,distance=..50] run damage @s 1 mob_attack by @p[gamemode=adventure,distance=..30]
#execute at @s if entity @p[gamemode=adventure,distance=..50] run return fail
#
#execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] run tp @s ~ ~ ~
#execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~ ~ ~2
#execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~2 ~ ~
#execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~-2 ~ ~
#execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~ ~ ~-2
#damage @s 1 mob_attack by @n[type=endermite,tag=Guia_oleada]
#execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] run return fail
#
#execute at @n[type=#zombies,tag=lider-ola] run tp @s ~ ~ ~
#execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~ ~ ~2
#execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~2 ~ ~
#execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~-2 ~ ~
#execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~ ~ ~-2
#
#damage @s 1 mob_attack by @n[type=endermite,tag=Guia_oleada]