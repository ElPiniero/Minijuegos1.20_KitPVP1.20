schedule clear kitpvp:solitario/hordas/horda_1
advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/segunda_horda
scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada,gamemode=!spectator,tag=!Jugador_Zombi] run scoreboard players add #jugadores-vivos Conteo 1
scoreboard players reset #zombis Zombis
execute as @e[type=#zombies] run scoreboard players add #zombis Zombis 1
scoreboard players reset #zombis-inactivos ZombisInactivos

execute as @e[type=#zombies,tag=!jefes_guia,tag=!ola] at @s unless entity @p[distance=..36,gamemode=!spectator,tag=!sesion_no_iniciada] run scoreboard players add #zombis-inactivos ZombisInactivos 1
execute as @e[type=#zombies,tag=!jefes_guia,tag=!ola] at @s unless entity @p[distance=..36,gamemode=!spectator,tag=!sesion_no_iniciada] run tag @s add zombi_inactivo
execute if score #zombis-inactivos ZombisInactivos matches 1.. unless entity @e[tag=oleada-guia] run function kitpvp:solitario/hordas/oleada/mini_ola
execute if score #supervivencia-zombis ZombieBuff matches ..700 run schedule function kitpvp:solitario/hordas/horda_2 2s
execute if predicate kitpvp:5 unless entity @e[tag=m-oleada-guia] unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/oleada/oleadas
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis

execute if score #supervivencia-zombis ZombieBuff matches 90.. run effect give @e[type=#zombies] resistance infinite 0 true
execute if score #supervivencia-zombis ZombieBuff matches 700.. as @a[tag=!sesion_no_iniciada] if score @s RegistrarDiamante matches 1.. run function kitpvp:solitario/diamantes/trigger_diamantes
execute if score #supervivencia-zombis ZombieBuff matches 700.. run playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if score #supervivencia-zombis ZombieBuff matches 700.. run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if score #supervivencia-zombis ZombieBuff matches 700.. run summon lightning_bolt -56 71 -24
execute if score #supervivencia-zombis ZombieBuff matches 700.. run bossbar set lvl1 name {"text":"Encuentro Maldito","bold":true,"color":"red"}
execute if score #supervivencia-zombis ZombieBuff matches 700.. run bossbar set lvl1 max 1260
execute if score #supervivencia-zombis ZombieBuff matches 700.. run data merge storage supervivencia-zombis {Horda:"3"}
execute if score #supervivencia-zombis ZombieBuff matches 700.. run function kitpvp:solitario/hordas/horda_3