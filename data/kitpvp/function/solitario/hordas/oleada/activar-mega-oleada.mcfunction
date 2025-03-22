damage @n[type=#zombies,tag=nuevo2,tag=lider-ola] 1 mob_attack by @p[gamemode=adventure]
execute as @e[type=#zombies,tag=jefes_guia] run damage @s 1 mob_attack by @n[type=endermite,tag=Guia_oleada,tag=nuevo2]
effect give @e[type=#zombies,tag=jefes_guia] instant_damage

execute as @n[type=#zombies,tag=nuevo2,tag=lider-ola] on target run data get entity @s Health
execute as @n[type=#zombies,tag=jefes_guia,tag=!lider-ola] on target run data get entity @s Health

tag @e[type=#zombies] remove jefes_guia
tag @n[type=endermite,tag=Guia_oleada,tag=nuevo2] remove nuevo2
tag @n[type=interaction,tag=Vector_oleada,tag=nuevo2] remove nuevo2
tag @e[type=#zombies] remove nuevo2