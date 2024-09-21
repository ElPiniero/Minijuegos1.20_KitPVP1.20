schedule clear kitpvp:solitario/hordas/horda_4
advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/quinta_horda
stopsound @a master music.nether.soul_sand_valley
scoreboard players reset @a Musica
scoreboard players reset @a ZombieShop
clear @a diamond
clear @a[tag=!sesion_no_iniciada] written_book
kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]
execute store result bossbar lvl1 value run scoreboard players remove #supervivencia-zombis ZombieBuff 12
scoreboard players reset #zombis Zombis
execute as @e[type=#zombies] run scoreboard players add #zombis Zombis 1
scoreboard players reset #zombis-inactivos ZombisInactivos
execute as @e[type=#zombies,tag=!jefes_guia,tag=!ola] at @s unless entity @p[distance=..36,gamemode=!spectator,tag=!sesion_no_iniciada] run scoreboard players add #zombis-inactivos ZombisInactivos 1
execute as @e[type=#zombies,tag=!jefes_guia,tag=!ola] at @s unless entity @p[distance=..36,gamemode=!spectator,tag=!sesion_no_iniciada] run tag @s add zombi_inactivo
execute if score #zombis-inactivos ZombisInactivos matches 1.. unless entity @e[tag=oleada-guia] run function kitpvp:solitario/hordas/oleada/mini_ola
tag @e[type=#zombies] add trepador
execute unless score #supervivencia-zombis ZombieBuff matches ..0 run schedule function kitpvp:solitario/hordas/horda_5 3s
execute if predicate kitpvp:10 unless entity @e[tag=m-oleada-guia] unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/oleada/oleadas
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada,gamemode=!spectator,tag=!Jugador_Zombi] run scoreboard players add #jugadores-vivos Conteo 1
effect give @e[tag=emboscador] invisibility infinite 0 true
effect give @e[type=#zombies] strength infinite 10 true
effect give @e[type=#zombies] resistance infinite 4 true
effect give @e[type=#zombies] fire_resistance infinite 0 true
summon lightning_bolt -56 71 -24
execute as @e[type=#zombies] run data remove entity @s DeathLootTable
execute if score #supervivencia-zombis ZombieBuff matches 195..390 run tp @e[type=#zombies,limit=20] @r[gamemode=!spectator]
execute if score #supervivencia-zombis ZombieBuff matches 0..195 run execute as @a[tag=!sesion_no_iniciada] run tp @e[type=#zombies,limit=10,distance=10..] @s[gamemode=!spectator]
execute if score #supervivencia-zombis ZombieBuff matches ..0 run function kitpvp:solitario/hordas/victoria/victoria