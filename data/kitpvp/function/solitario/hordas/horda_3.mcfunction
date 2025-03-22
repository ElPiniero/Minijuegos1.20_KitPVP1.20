schedule clear kitpvp:solitario/hordas/horda_2
advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/tercera_horda
scoreboard players reset #zombis Zombis
execute as @e[type=#zombies] run scoreboard players add #zombis Zombis 1
execute if score #supervivencia-zombis ZombieBuff matches ..1260 run schedule function kitpvp:solitario/hordas/horda_3 2s

tag @e[type=#zombies] remove activo
execute if predicate kitpvp:10 unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/oleada/oleadas
execute as @e[type=#zombies] at @s on target run tag @n[type=#zombies] add activo

scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada,gamemode=!spectator,tag=!Jugador_Zombi] run scoreboard players add #jugadores-vivos Conteo 1
effect give @e[type=#zombies] strength infinite 1 true
effect give @e[type=#zombies] resistance infinite 1 true

execute if score #supervivencia-zombis ZombieBuff matches 1260.. as @a[tag=!sesion_no_iniciada] if score @s RegistrarDiamante matches 1.. run function kitpvp:solitario/diamantes/trigger_diamantes
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run summon lightning_bolt -56 71 -24
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run function kitpvp:solitario/hordas/emboscadores
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run bossbar set lvl1 max 2000
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run bossbar set lvl1 name ["",{"text":"|","bold":true,"underlined":true,"obfuscated":true,"color":"red"},{"text":" Putrefaccion Santa ","bold":true,"underlined":true,"color":"dark_red"},{"text":"|","bold":true,"underlined":true,"obfuscated":true,"color":"red"}]
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run data merge storage supervivencia-zombis {Horda:"4"}
execute if score #supervivencia-zombis ZombieBuff matches 1260.. run function kitpvp:solitario/hordas/horda_4

