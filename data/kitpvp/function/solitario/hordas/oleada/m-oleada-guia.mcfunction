execute unless entity @e[type=egg,tag=Bola] run tp @s ^ ^ ^.4 facing entity @p[gamemode=!spectator] eyes
execute unless entity @e[type=#zombies,distance=..29] run function kitpvp:solitario/hordas/invocar_zombis
execute unless score #zombis Zombis matches 100.. if predicate kitpvp:10 at @e[type=#zombies,sort=nearest,limit=1] run function kitpvp:solitario/hordas/invocar_zombis
execute at @e[type=#zombies,sort=nearest,limit=1] run tp @e[type=#zombies,distance=29..,tag=jefes_guia] ~ ~ ~
effect give @e[type=#zombies,tag=jefes_guia] slow_falling 1 0 true
execute as @e[tag=jefes_guia,type=#zombies] at @s run damage @s 1 generic by @e[tag=m-oleada-guia,limit=1,type=vex,tag=!yapego]
execute as @e[tag=jefes_guia,type=#zombies] on target if entity @s[tag=m-oleada-guia,tag=!yapego] run tag @s add yapego
execute if entity @p[gamemode=!spectator,distance=..2] run tag @e[tag=jefes_guia,type=#zombies] remove jefes_guia
execute if entity @p[gamemode=!spectator,distance=..2] run function kitpvp:cuerpo_del_juego/tag_muerte