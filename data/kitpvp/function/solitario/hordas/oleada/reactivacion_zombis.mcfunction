execute on target run return fail
execute unless data storage modo_de_pvp {Mapa:"habitacion"} if entity @p[gamemode=!spectator,distance=..35] run return run damage @s 1 mob_attack by @p[gamemode=!spectator]

#effect give @s glowing
tag @s add sin-target