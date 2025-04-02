schedule function kitpvp:solitario/hordas/horda_1 2s
bossbar set lvl1 players @a[tag=!sesion_no_iniciada]

scoreboard players reset #zombis Zombis
advancement grant @a only kitpvp:kitpvp/zombis/zombis
execute as @e[type=#zombies] run scoreboard players add #zombis Zombis 1

scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada,gamemode=!spectator] run scoreboard players add #jugadores-vivos Conteo 1
execute as @a[tag=!sesion_no_iniciada,gamemode=spectator] if score @s Reaparecer matches 1.. run scoreboard players add #jugadores-vivos Conteo 1

#=============================HORDA 1=============================#
execute unless score #supervivencia-zombis ZombieBuff matches 280.. unless data storage supervivencia-zombis {Horda:"5"} run return fail
#=============================HORDA 2=============================#

execute if data storage supervivencia-zombis {Horda:"1"} as @a[tag=!sesion_no_iniciada] if score @s RegistrarDiamante matches 1.. run function kitpvp:solitario/diamantes/trigger_diamantes
execute if data storage supervivencia-zombis {Horda:"1"} run playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"1"} run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1

execute if data storage supervivencia-zombis {Horda:"1"} if data storage modo_de_pvp {Mapa:"pueblo"} run summon lightning_bolt -56 71 -24
execute if data storage supervivencia-zombis {Horda:"1"} if data storage modo_de_pvp {Mapa:"aldea"} run summon lightning_bolt -320 102 -32
execute if data storage supervivencia-zombis {Horda:"1"} if data storage modo_de_pvp {Mapa:"habitacion"} run summon lightning_bolt -112 100 192

#executeifs data storage supervivencia-zombis {Horda:"2"} run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] add lg_austeridad
execute if data storage supervivencia-zombis {Horda:"1"} run bossbar set lvl1 name ["",{"text":"Llanto del espiritu","color":"red"}]
execute if data storage supervivencia-zombis {Horda:"1"} run bossbar set lvl1 max 700
execute if data storage supervivencia-zombis {Horda:"1"} run data merge storage supervivencia-zombis {Horda:"2"}

advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/segunda_horda
execute if predicate kitpvp:10 unless score #zombis Zombis matches 100.. run function kitpvp:solitario/hordas/oleada/oleadas
effect give @e[type=#zombies] resistance infinite 0 true

execute unless score #supervivencia-zombis ZombieBuff matches 700.. unless data storage supervivencia-zombis {Horda:"5"} run return fail
#=============================HORDA 3=============================#

execute if data storage supervivencia-zombis {Horda:"2"} as @a[tag=!sesion_no_iniciada] if score @s RegistrarDiamante matches 1.. run function kitpvp:solitario/diamantes/trigger_diamantes
execute if data storage supervivencia-zombis {Horda:"2"} run playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"2"} run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"2"} if data storage modo_de_pvp {Mapa:"pueblo"} run summon lightning_bolt -56 71 -24
execute if data storage supervivencia-zombis {Horda:"2"} if data storage modo_de_pvp {Mapa:"aldea"} run summon lightning_bolt -320 102 -32
execute if data storage supervivencia-zombis {Horda:"2"} if data storage modo_de_pvp {Mapa:"habitacion"} run summon lightning_bolt -112 100 192
execute if data storage supervivencia-zombis {Horda:"2"} run bossbar set lvl1 name {"text":"Encuentro Maldito","bold":true,"color":"red"}
execute if data storage supervivencia-zombis {Horda:"2"} run bossbar set lvl1 max 1260
execute if data storage supervivencia-zombis {Horda:"2"} run data merge storage supervivencia-zombis {Horda:"3"}

advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/tercera_horda
effect give @e[type=#zombies] strength infinite 1 true
effect give @e[type=#zombies] resistance infinite 1 true

execute unless score #supervivencia-zombis ZombieBuff matches 1260.. unless data storage supervivencia-zombis {Horda:"5"} run return fail
#=============================HORDA 4=============================#

execute if data storage supervivencia-zombis {Horda:"3"} as @a[tag=!sesion_no_iniciada] if score @s RegistrarDiamante matches 1.. run function kitpvp:solitario/diamantes/trigger_diamantes
execute if data storage supervivencia-zombis {Horda:"3"} run playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"3"} run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"3"} if data storage modo_de_pvp {Mapa:"pueblo"} run summon lightning_bolt -56 71 -24
execute if data storage supervivencia-zombis {Horda:"3"} if data storage modo_de_pvp {Mapa:"aldea"} run summon lightning_bolt -320 102 -32
execute if data storage supervivencia-zombis {Horda:"3"} if data storage modo_de_pvp {Mapa:"habitacion"} run summon lightning_bolt -112 100 192
execute if data storage supervivencia-zombis {Horda:"3"} run function kitpvp:solitario/hordas/emboscadores
execute if data storage supervivencia-zombis {Horda:"3"} run bossbar set lvl1 max 2000
execute if data storage supervivencia-zombis {Horda:"3"} run bossbar set lvl1 name ["",{"text":"|","bold":true,"underlined":true,"obfuscated":true,"color":"red"},{"text":" Putrefaccion Santa ","bold":true,"underlined":true,"color":"dark_red"},{"text":"|","bold":true,"underlined":true,"obfuscated":true,"color":"red"}]
execute if data storage supervivencia-zombis {Horda:"3"} run data merge storage supervivencia-zombis {Horda:"4"}

advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/cuarta_horda
effect give @e[type=#zombies] strength infinite 2 true
effect give @e[tag=emboscador] invisibility infinite 0 true
effect give @e[type=#zombies] slow_falling infinite 0 true
effect give @e[type=#zombies] resistance infinite 2 true
execute if score #supervivencia-zombis ZombieBuff matches 1900.. as @a[tag=!sesion_no_iniciada,tag=Jugador_Vivo,tag=!entregar_diamante] if score @s RegistrarDiamante matches 1.. run function kitpvp:solitario/diamantes/trigger_diamantes
#execute if score #supervivencia-zombis ZombieBuff matches 1900.. run tellraw @a[tag=!sesion_no_iniciada] [{"text":"Es","color":"dark_red","bold": true},{"text":"t","color":"#bf0101"},{"text":"a m","color":"#c00202"},{"text":"u","color":"#c10303"},{"text":"ri","color":"#c20404"},{"text":"e","color":"#c30505"},{"text":"nd","color":"#c40606"},{"text":"o ","color":"#c50707"},{"text":"de ","color":"#c60808"},{"text":"r","color":"#c70909"},{"text":"a","color":"#c80a0a"},{"text":"b","color":"#c90a0a"},{"text":"i","color":"#c90b0b"},{"text":"a ","color":"#ca0c0c"},{"text":"e ","color":"#cb0c0c"},{"text":"i","color":"#cb0d0d"},{"text":"r","color":"#cc0e0e"},{"text":"a","color":"#cd0e0e"},{"text":", ","color":"#cd0f0f"},{"text":"y","color":"#ce1010"},{"text":"a ","color":"#cf1010"},{"text":"n","color":"#cf1111"},{"text":"o ","color":"#d01212"},{"text":"h","color":"#d11212"},{"text":"a","color":"#d11313"},{"text":"y ","color":"#d21414"},{"text":"n","color":"#d31515"},{"text":"e","color":"#d41515"},{"text":"c","color":"#d41616"},{"text":"e","color":"#d51717"},{"text":"s","color":"#d61717"},{"text":"i","color":"#d61818"},{"text":"d","color":"#d71919"},{"text":"a","color":"#d81919"},{"text":"d ","color":"#d81a1a"},{"text":"d","color":"#d91b1b"},{"text":"e ","color":"#da1b1b"},{"text":"a","color":"#da1c1c"},{"text":"c","color":"#db1d1d"},{"text":"a","color":"#dc1d1d"},{"text":"b","color":"#dc1e1e"},{"text":"a","color":"#dd1f1f"},{"text":"r ","color":"#de1f1f"},{"text":"c","color":"#df2020"},{"text":"o","color":"#df2121"},{"text":"n ","color":"#e02121"},{"text":"s","color":"#e12222"},{"text":"u","color":"#e12323"},{"text":"s ","color":"#e22323"},{"text":"f","color":"#e32424"},{"text":"u","color":"#e32525"},{"text":"e","color":"#e42525"},{"text":"r","color":"#e52626"},{"text":"z","color":"#e52727"},{"text":"a","color":"#e62727"},{"text":"s","color":"#e72828"},{"text":", ","color":"#e72929"},{"text":"s","color":"#e82a2a"},{"text":"o","color":"#e92a2a"},{"text":"l","color":"#ea2b2b"},{"text":"o ","color":"#ea2c2c"},{"text":"d","color":"#eb2c2c"},{"text":"e","color":"#ec2d2d"},{"text":"j","color":"#ec2e2e"},{"text":"a ","color":"#ed2e2e"},{"text":"q","color":"#ee2f2f"},{"text":"u","color":"#ee3030"},{"text":"e ","color":"#ef3030"},{"text":"t","color":"#f03131"},{"text":"e ","color":"#f03232"},{"text":"v","color":"#f13232"},{"text":"e","color":"#f23333"},{"text":"a ","color":"#f23434"},{"text":"s","color":"#f33434"},{"text":"o","color":"#f43535"},{"text":"br","color":"#f53636"},{"text":"e","color":"#f63737"},{"text":"vi","color":"#f73838"},{"text":"v","color":"#f83939"},{"text":"ir ","color":"#f93a3a"},{"text":"y ","color":"#fa3b3b"},{"text":"hu","color":"#fb3c3c"},{"text":"y","color":"#fc3d3d"},{"text":"e","color":"#fd3e3e"},{"text":".","color":"red"}]

execute unless score #supervivencia-zombis ZombieBuff matches 2000.. unless data storage supervivencia-zombis {Horda:"5"} run return fail
#=============================HORDA 5=============================#

execute if data storage supervivencia-zombis {Horda:"4"} run item replace entity @e[type=#zombies] armor.head with player_head[enchantments={vanishing_curse:1},custom_name='{"text":"Zombie Soldier"}',profile={id:[I;-1957263544,-1024376218,-1497311088,335943817],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjRiMDIwNDhhMWQ2YmExNjUxYzMxMDUwMDJlZDEzNWViN2U5MTYzYmUyMzk3NzA0NjUyOGE4ODUxZWM0M2I1NCJ9fX0="}]}]
execute if data storage supervivencia-zombis {Horda:"4"} run playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"4"} run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"4"} run stopsound @a[tag=!sesion_no_iniciada] master music.nether.soul_sand_valley
execute if data storage supervivencia-zombis {Horda:"4"} as @a[tag=!sesion_no_iniciada] at @s run function kitpvp:cuerpo_del_juego/musica/reiniciar_musica
execute if data storage supervivencia-zombis {Horda:"4"} if data storage modo_de_pvp {Mapa:"pueblo"} run summon lightning_bolt -56 71 -24
execute if data storage supervivencia-zombis {Horda:"4"} if data storage modo_de_pvp {Mapa:"aldea"} run summon lightning_bolt -320 102 -32
execute if data storage supervivencia-zombis {Horda:"4"} if data storage modo_de_pvp {Mapa:"habitacion"} run summon lightning_bolt -112 100 192
execute if data storage supervivencia-zombis {Horda:"4"} run bossbar set lvl1 name ["",{"text":"/","bold":true,"underlined":true,"obfuscated":true,"color":"dark_red"},{"text":"-_","bold":true,"underlined":true,"color":"dark_red"},{"text":"RUINAS DE FE","bold":true,"strikethrough":true,"underlined":true,"color":"dark_red"},{"text":"_-","bold":true,"underlined":true,"color":"dark_red"},{"text":"/","bold":true,"underlined":true,"obfuscated":true,"color":"dark_red"}]
execute if data storage supervivencia-zombis {Horda:"4"} run bossbar set lvl1 color red
execute if data storage supervivencia-zombis {Horda:"4"} run data merge storage supervivencia-zombis {Horda:"5"}

advancement grant @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] only kitpvp:kitpvp/zombis/quinta_horda
scoreboard players reset @a ZombieShop
clear @a diamond
clear @a[tag=!sesion_no_iniciada] written_book
kill @e[type=item,nbt={Item:{id:"minecraft:written_book"}}]
execute store result bossbar lvl1 value run scoreboard players remove #supervivencia-zombis ZombieBuff 12
effect give @e[tag=emboscador] invisibility infinite 0 true
effect give @e[type=#zombies] strength infinite 10 true
effect give @e[type=#zombies] resistance infinite 4 true
effect give @e[type=#zombies] fire_resistance infinite 0 true
execute if data storage modo_de_pvp {Mapa:"pueblo"} run summon lightning_bolt -56 71 -24
execute if data storage modo_de_pvp {Mapa:"aldea"} run summon lightning_bolt -320 102 -32
execute if data storage modo_de_pvp {Mapa:"habitacion"} run summon lightning_bolt -112 100 192
execute if score #supervivencia-zombis ZombieBuff matches 195..390 run tp @e[type=#zombies,limit=20,sort=random] @r[gamemode=!spectator]
execute if score #supervivencia-zombis ZombieBuff matches 0..195 as @a[tag=!sesion_no_iniciada] run tp @e[type=#zombies,limit=10,sort=random] @s[gamemode=!spectator]
execute if score #supervivencia-zombis ZombieBuff matches ..0 run function kitpvp:solitario/hordas/victoria/victoria