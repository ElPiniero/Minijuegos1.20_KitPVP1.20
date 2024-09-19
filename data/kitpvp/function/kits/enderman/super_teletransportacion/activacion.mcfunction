particle portal ~ ~1 ~ .3 1 .3 0 10 force

execute as @e[type=!#kitpvp:inmunes,tag=!zona_de_kits] at @s anchored eyes rotated ~ 0 on attacker if entity @s[tag=Enderman,scores={SuTe=1..},tag=!teleporte_activado] run tp @s ^ ^ ^1 facing entity @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,distance=..1]
execute as @e[type=!#kitpvp:inmunes,tag=!zona_de_kits] at @s anchored eyes rotated ~ 0 on attacker if entity @s[tag=Enderman,scores={SuTe=1..},tag=!teleporte_activado] run tag @s add teleporte_activado

execute anchored eyes facing entity @p[distance=1..] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] if entity @p[distance=1..30] run tag @s add teleporte_activado
execute anchored eyes facing entity @p[distance=1..] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.3] if entity @p[distance=1..30] at @p[distance=1..30] anchored eyes rotated ~ 0 run tp @s[tag=teleporte_activado] ^ ^ ^-1 facing entity @p[distance=1..30]

execute as @s[tag=!teleporte_activado] anchored eyes run function kitpvp:kits/enderman/super_teletransportacion/teleporte_a_bloque

particle portal ~ ~1 ~ .3 1 .3 0 10 force
playsound entity.enderman.teleport master @a ~ ~ ~ 1
tag @s remove teleporte_activado
scoreboard players reset @s Alcance-Bala
scoreboard players reset @s SuTe