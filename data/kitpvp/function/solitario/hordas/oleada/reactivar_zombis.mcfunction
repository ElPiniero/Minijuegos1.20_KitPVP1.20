execute on target run return fail
execute at @s if entity @p[gamemode=adventure,distance=..50] run damage @s 1 mob_attack by @p[gamemode=adventure,distance=..30]
execute at @s if entity @p[gamemode=adventure,distance=..50] run return fail

execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] run tp @s ~ ~ ~
execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~ ~ ~2
execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~2 ~ ~
execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~-2 ~ ~
execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] at @n[distance=1..,type=#zombies,tag=lider-ola,tag=jefes] if predicate kitpvp:50 run tp @s ~ ~ ~-2
damage @s 1 mob_attack by @n[type=endermite,tag=Guia_oleada]
execute as @s[tag=jefes] if entity @n[distance=1..,type=#zombies,tag=jefes,tag=lider-ola] run return fail

execute at @n[type=#zombies,tag=lider-ola] run tp @s ~ ~ ~
execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~ ~ ~2
execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~2 ~ ~
execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~-2 ~ ~
execute at @n[type=#zombies,tag=lider-ola] if predicate kitpvp:50 run tp @s ~ ~ ~-2

damage @s 1 mob_attack by @n[type=endermite,tag=Guia_oleada]