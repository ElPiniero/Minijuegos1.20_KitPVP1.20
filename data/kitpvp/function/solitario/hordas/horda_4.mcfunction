schedule clear kitpvp:solitario/hordas/horda_3
advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/cuarta_horda
scoreboard players reset #zombis Zombis
execute as @e[type=#zombies] run scoreboard players add #zombis Zombis 1
scoreboard players reset #zombis-inactivos ZombisInactivos

execute as @e[type=#zombies,tag=!jefes_guia,tag=!ola] at @s unless entity @p[distance=..36,gamemode=!spectator,tag=!sesion_no_iniciada] run scoreboard players add #zombis-inactivos ZombisInactivos 1
execute as @e[type=#zombies,tag=!jefes_guia,tag=!ola] at @s unless entity @p[distance=..36,gamemode=!spectator,tag=!sesion_no_iniciada] run tag @s add zombi_inactivo
execute if score #zombis-inactivos ZombisInactivos matches 1.. unless entity @e[tag=oleada-guia] run function kitpvp:solitario/hordas/oleada/mini_ola
execute if score #supervivencia-zombis ZombieBuff matches ..2000 run schedule function kitpvp:solitario/hordas/horda_4 2s
execute if predicate kitpvp:5 unless entity @e[tag=m-oleada-guia] unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/oleada/oleadas
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
execute as @e[tag=Zombi-spawn,limit=1,sort=random,type=interaction] at @s unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/invocar_zombis
scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada,gamemode=!spectator,tag=!Jugador_Zombi] run scoreboard players add #jugadores-vivos Conteo 1
effect give @e[type=#zombies] strength infinite 2 true
effect give @e[tag=emboscador] invisibility infinite 0 true
effect give @e[type=#zombies] slow_falling infinite 0 true
effect give @e[type=#zombies] resistance infinite 2 true

execute if score #supervivencia-zombis ZombieBuff matches 1900.. as @a[tag=!sesion_no_iniciada,tag=Jugador_Vivo,tag=!entregar_diamante] if score @s RegistrarDiamante matches 1.. run function kitpvp:solitario/diamantes/trigger_diamantes
execute if score #supervivencia-zombis ZombieBuff matches 1900.. as @e[type=#zombies] run data remove entity @s DeathLootTable
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run item replace entity @e[type=#zombies] armor.head with player_head[enchantments={vanishing_curse:1},custom_name='{"text":"Zombie Soldier"}',profile={id:[I;-1957263544,-1024376218,-1497311088,335943817],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRiMDIwNDhhMWQ2YmExNjUxYzMxMDUwMDJlZDEzNWViN2U5MTYzYmUyMzk3NzA0NjUyOGE4ODUxZWM0M2I1NCJ9fX0="}]}]
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run stopsound @a[tag=!sesion_no_iniciada] master music.nether.soul_sand_valley
execute if score #supervivencia-zombis ZombieBuff matches 2000.. as @a[tag=!sesion_no_iniciada] at @s run function kitpvp:cuerpo_del_juego/musica/reiniciar_musica
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run summon lightning_bolt -56 71 -24
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run bossbar set lvl1 name ["",{"text":"/","bold":true,"underlined":true,"obfuscated":true,"color":"dark_red"},{"text":"-_","bold":true,"underlined":true,"color":"dark_red"},{"text":"RUINAS DE FE","bold":true,"strikethrough":true,"underlined":true,"color":"dark_red"},{"text":"_-","bold":true,"underlined":true,"color":"dark_red"},{"text":"/","bold":true,"underlined":true,"obfuscated":true,"color":"dark_red"}]
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run bossbar set lvl1 color red
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run data merge storage supervivencia-zombis {Horda:"5"}
execute if score #supervivencia-zombis ZombieBuff matches 2000.. run function kitpvp:solitario/hordas/horda_5