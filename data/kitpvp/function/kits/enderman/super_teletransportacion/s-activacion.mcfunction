execute as @a[distance=..5,gamemode=!spectator] run tag @s add teleporte_aleatorio
execute at @a[tag=teleporte_aleatorio] run particle portal ~ ~1 ~ .3 1 .3 0 10 force
tp @a[tag=teleporte_aleatorio] @r[distance=6..,tag=Jugador_Vivo]
execute at @a[tag=teleporte_aleatorio] run particle portal ~ ~1 ~ .3 1 .3 0 10 force
execute at @a[tag=teleporte_aleatorio] run playsound entity.enderman.teleport master @a ~ ~ ~ 1

tag @e[type=#zombies,distance=..16,limit=10] add teleporte_aleatorio

execute if data storage modo_de_pvp {Mapa:"pueblo"} run spreadplayers -58 -24 1 125 under 139 false @e[type=#zombies,tag=teleporte_aleatorio]
execute if data storage modo_de_pvp {Mapa:"aldea"} run spreadplayers -320 -32 1 100 under 149 false @e[type=#zombies,tag=teleporte_aleatorio]
execute if data storage modo_de_pvp {Mapa:"habitacion"} run spreadplayers -112 192 1 50 under 144 false @e[type=#zombies,tag=teleporte_aleatorio]

execute at @e[type=#zombies,tag=teleporte_aleatorio] run particle portal ~ ~1 ~ .3 1 .3 0 10 force
execute at @e[type=#zombies,tag=teleporte_aleatorio] run playsound entity.enderman.teleport master @a ~ ~ ~ 1

tag @a[tag=teleporte_aleatorio] remove teleporte_aleatorio
tag @e[type=#zombies,tag=teleporte_aleatorio] remove teleporte_aleatorio
scoreboard players reset @s SuTe