schedule function kitpvp:solitario/hordas/oleada/activar-mega-oleada 1t

tag @r[tag=!sesion_no_iniciada,gamemode=!spectator] add target

execute as @n[type=#zombies,tag=jefes_guia] at @s run function kitpvp:solitario/hordas/oleada/rotar_zombis

execute unless data storage modo_de_pvp {Mapa:"habitacion"} as @n[type=#zombies,tag=jefes_guia] at @s run function kitpvp:solitario/hordas/oleada/pre-spread
execute unless data storage modo_de_pvp {Mapa:"habitacion"} as @n[type=#zombies,tag=jefes_guia] run damage @s 1 player_attack by @r[tag=!sesion_no_iniciada,gamemode=!spectator]
execute if data storage modo_de_pvp {Mapa:"habitacion"} as @n[type=#zombies,tag=jefes_guia] at @s run function kitpvp:solitario/hordas/oleada/regresar_mapa_hab

tag @a remove target
data merge entity @n[type=#zombies,tag=jefes_guia] {NoGravity:0b}
tag @n[type=#zombies,tag=jefes_guia] remove jefes_guia
execute unless entity @e[type=#zombies,tag=jefes_guia] run schedule clear kitpvp:solitario/hordas/oleada/activar-mega-oleada




#execute at @r[tag=!sesion_no_iniciada,gamemode=!spectator] run spreadplayers ~ ~ 1 40 under 140 false @e[type=#zombies,tag=jefes_guia]
#execute as @e[type=#zombies,tag=jefes_guia] at @s if entity @p[tag=!sesion_no_iniciada,gamemode=!spectator,distance=..32] run tag @s add cerca
#execute as @e[type=#zombies,tag=jefes_guia] at @s if entity @p[tag=!sesion_no_iniciada,gamemode=!spectator,distance=33..40] run tag @s add lejos
#execute as @e[type=#zombies,tag=jefes_guia,tag=cerca] at @n[type=#zombies,tag=jefes_guia,tag=lejos,sort=random] run tp @s ~ ~ ~
#execute as @e[type=#zombies,tag=jefes_guia] run attribute @s follow_range base set 40
#tag @e[type=#zombies] remove cerca
#tag @e[type=#zombies] remove lejos
#tag @e[type=#zombies] remove jefes_guia

#damage @n[type=#zombies,tag=jefes_guia2,tag=lider-ola] 1 mob_attack by @p[gamemode=adventure]
#execute as @e[type=#zombies,tag=jefes_guia] run damage @s 1 mob_attack by @n[type=endermite,tag=Guia_oleada,tag=jefes_guia2]
#effect give @e[type=#zombies,tag=jefes_guia] instant_damage
#
#execute as @n[type=#zombies,tag=jefes_guia2,tag=lider-ola] on target run data get entity @s Health
#execute as @n[type=#zombies,tag=jefes_guia,tag=!lider-ola] on target run data get entity @s Health
#
#tag @e[type=#zombies] remove jefes_guia
#tag @n[type=endermite,tag=Guia_oleada,tag=jefes_guia2] remove jefes_guia2
#tag @n[type=interaction,tag=Vector_oleada,tag=jefes_guia2] remove jefes_guia2
#tag @e[type=#zombies] remove jefes_guia2