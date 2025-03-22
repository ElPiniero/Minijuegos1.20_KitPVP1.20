execute as @e[type=#zombies,tag=nuevo,tag=!lider-ola] run damage @s 1 mob_attack by @n[type=endermite,tag=Guia_oleada,tag=nuevo]
damage @n[type=#zombies,tag=nuevo,tag=lider-ola] 1 mob_attack by @p[gamemode=adventure]
effect give @e[type=#zombies,tag=nuevo] instant_damage

tag @n[type=endermite,tag=Guia_oleada,tag=nuevo] remove nuevo
tag @n[type=interaction,tag=Vector_oleada,tag=nuevo] remove nuevo
tag @e[type=#zombies] remove nuevo