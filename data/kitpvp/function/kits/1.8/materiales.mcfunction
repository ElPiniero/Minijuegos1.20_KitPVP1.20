execute unless score @n[type=fishing_bobber,tag=!caniazo] INESoldado matches 1.. run scoreboard players operation @n[type=fishing_bobber,tag=!caniazo] INESoldado = @s INESoldado
tag @e[type=fishing_bobber] add caniazo

execute as @e[type=fishing_bobber,tag=caniazo] at @s positioned ~ ~-1 ~ if entity @n[type=!#kitpvp:inmunes,distance=..1.5] unless score @n[type=!#kitpvp:inmunes,distance=..1.5] INESoldado = @s INESoldado run tag @s add yachoco
execute if score @n[type=fishing_bobber,tag=yachoco] INESoldado = @s INESoldado run tag @s add yapesque
execute unless entity @a[tag=yapesque] run return fail

execute as @s[tag=!supervivencia-z] as @e[type=fishing_bobber,tag=yachoco] at @s positioned ~ ~-1 ~ run damage @n[type=!#kitpvp:inmunes,distance=..1.5] 8 player_attack by @p[tag=yapesque]
execute as @s[tag=supervivencia-z] as @e[type=fishing_bobber,tag=yachoco] at @s positioned ~ ~-1 ~ run damage @n[type=!#kitpvp:inmunes,distance=..1.5] 12.5 generic by @p[tag=yapesque]
tag @a[tag=yapesque] remove yapesque
execute as @e[type=fishing_bobber,tag=caniazo,tag=yachoco] at @s run kill @s