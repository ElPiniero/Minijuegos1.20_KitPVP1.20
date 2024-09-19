execute unless entity @e[type=egg,tag=Bola] run tp @s ^ ^ ^.3 facing entity @p[gamemode=!spectator] eyes
execute unless entity @e[type=#zombies,distance=..29] run function kitpvp:solitario/hordas/invocar_zombis
execute unless score #zombis Zombis matches 100.. if predicate kitpvp:10 at @e[type=#zombies,sort=nearest,limit=1] run function kitpvp:solitario/hordas/invocar_zombis
execute at @e[type=#zombies,sort=nearest,limit=1] run tp @e[type=#zombies,tag=zombi_inactivo,distance=29..,tag=!jefes_guia,limit=20] ~ ~ ~
effect give @e[type=#zombies,tag=zombi_inactivo] slow_falling 1 0 true
execute if entity @p[gamemode=!spectator,distance=..3] run tag @e[tag=ola,type=#zombies] remove ola
execute if entity @p[gamemode=!spectator,distance=..3] run tag @e[tag=zombi_inactivo,type=#zombies,distance=..29] remove zombi_inactivo
execute if entity @p[gamemode=!spectator,distance=..3] run function kitpvp:cuerpo_del_juego/tag_muerte