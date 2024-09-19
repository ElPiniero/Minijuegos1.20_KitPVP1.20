execute as @a[distance=..5,gamemode=!spectator] run tag @s add teleporte_aleatorio
execute at @s as @a[distance=..5,gamemode=!spectator] run scoreboard players add @p[tag=Enderman,distance=..1] Lg_PaDondeLlevo 1
scoreboard players remove @s Lg_PaDondeLlevo 1
execute at @a[tag=teleporte_aleatorio] run particle portal ~ ~1 ~ .3 1 .3 0 10 force
tp @a[tag=teleporte_aleatorio] @r[distance=6..,tag=Jugador_Vivo]
execute at @a[tag=teleporte_aleatorio] run particle portal ~ ~1 ~ .3 1 .3 0 10 force
execute at @a[tag=teleporte_aleatorio] run playsound entity.enderman.teleport master @a ~ ~ ~ 1

tag @e[type=#zombies,distance=..16,limit=10] add teleporte_aleatorio
execute positioned -56.00001 71 -24.00001 at @p at @e[type=interaction,sort=furthest,limit=1,tag=ola-spawn] run tp @e[type=#zombies,tag=teleporte_aleatorio] ~ ~ ~
execute at @e[type=#zombies,tag=teleporte_aleatorio] run particle portal ~ ~1 ~ .3 1 .3 0 10 force
execute at @e[type=#zombies,tag=teleporte_aleatorio] run playsound entity.enderman.teleport master @a ~ ~ ~ 1

execute if score @s Lg_PaDondeLlevo matches 3.. run advancement grant @s only kitpvp:kitpvp/pvp/pa_donde_lo_llevo
scoreboard players reset @s Lg_PaDondeLlevo
tag @a[tag=teleporte_aleatorio] remove teleporte_aleatorio
tag @e[type=#zombies,tag=teleporte_aleatorio] remove teleporte_aleatorio
scoreboard players reset @s SuTe