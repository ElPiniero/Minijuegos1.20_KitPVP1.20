execute if predicate kitpvp:10 run function kitpvp:solitario/hordas/oleada/mini_oleada
execute as @e[type=#zombies,tag=!jefes_guia] at @s unless entity @p[distance=..36,gamemode=!spectator] run tag @s add ola
tag @e[tag=Zombi-spawn,sort=random,limit=1,type=interaction] add oleada-origen
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~1 ~ ~
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~2 ~ ~
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~3 ~ ~
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~ ~ ~1
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~ ~ ~2
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~ ~ ~3
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~-1 ~ ~
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~-2 ~ ~
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~-3 ~ ~
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~ ~ ~-1
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~ ~ ~-2
execute as @e[tag=ola,type=#zombies] at @s positioned as @e[tag=oleada-origen,limit=1,type=interaction] if predicate kitpvp:50 run tp @s ~ ~ ~-3
execute at @e[tag=oleada-origen,limit=1,type=interaction] run summon vex ~ ~ ~ {Tags:["oleada-guia"],NoAI:1b,Silent:1b,active_effects:[{id:"invisibility",amplifier:0b,show_particles:0b,duration:-1},{id:"resistance",amplifier:4b,show_particles:0b,duration:-1}],PersistenceRequired:1b}
execute as @e[tag=ola,type=#zombies] at @s run damage @s 1 generic by @e[tag=oleada-guia,limit=1,type=vex]
tag @e[tag=oleada-origen,type=interaction] remove oleada-origen