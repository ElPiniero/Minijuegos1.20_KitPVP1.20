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
execute if score #supervivencia-zombis ZombieBuff matches 1965.. run tellraw @a[tag=!sesion_no_iniciada] [{"text":"Es","color":"dark_red","bold": true},{"text":"t","color":"#bf0101"},{"text":"a m","color":"#c00202"},{"text":"u","color":"#c10303"},{"text":"ri","color":"#c20404"},{"text":"e","color":"#c30505"},{"text":"nd","color":"#c40606"},{"text":"o ","color":"#c50707"},{"text":"de ","color":"#c60808"},{"text":"r","color":"#c70909"},{"text":"a","color":"#c80a0a"},{"text":"b","color":"#c90a0a"},{"text":"i","color":"#c90b0b"},{"text":"a ","color":"#ca0c0c"},{"text":"e ","color":"#cb0c0c"},{"text":"i","color":"#cb0d0d"},{"text":"r","color":"#cc0e0e"},{"text":"a","color":"#cd0e0e"},{"text":", ","color":"#cd0f0f"},{"text":"y","color":"#ce1010"},{"text":"a ","color":"#cf1010"},{"text":"n","color":"#cf1111"},{"text":"o ","color":"#d01212"},{"text":"h","color":"#d11212"},{"text":"a","color":"#d11313"},{"text":"y ","color":"#d21414"},{"text":"n","color":"#d31515"},{"text":"e","color":"#d41515"},{"text":"c","color":"#d41616"},{"text":"e","color":"#d51717"},{"text":"s","color":"#d61717"},{"text":"i","color":"#d61818"},{"text":"d","color":"#d71919"},{"text":"a","color":"#d81919"},{"text":"d ","color":"#d81a1a"},{"text":"d","color":"#d91b1b"},{"text":"e ","color":"#da1b1b"},{"text":"a","color":"#da1c1c"},{"text":"c","color":"#db1d1d"},{"text":"a","color":"#dc1d1d"},{"text":"b","color":"#dc1e1e"},{"text":"a","color":"#dd1f1f"},{"text":"r ","color":"#de1f1f"},{"text":"c","color":"#df2020"},{"text":"o","color":"#df2121"},{"text":"n ","color":"#e02121"},{"text":"s","color":"#e12222"},{"text":"u","color":"#e12323"},{"text":"s ","color":"#e22323"},{"text":"f","color":"#e32424"},{"text":"u","color":"#e32525"},{"text":"e","color":"#e42525"},{"text":"r","color":"#e52626"},{"text":"z","color":"#e52727"},{"text":"a","color":"#e62727"},{"text":"s","color":"#e72828"},{"text":", ","color":"#e72929"},{"text":"s","color":"#e82a2a"},{"text":"o","color":"#e92a2a"},{"text":"l","color":"#ea2b2b"},{"text":"o ","color":"#ea2c2c"},{"text":"d","color":"#eb2c2c"},{"text":"e","color":"#ec2d2d"},{"text":"j","color":"#ec2e2e"},{"text":"a ","color":"#ed2e2e"},{"text":"q","color":"#ee2f2f"},{"text":"u","color":"#ee3030"},{"text":"e ","color":"#ef3030"},{"text":"t","color":"#f03131"},{"text":"e ","color":"#f03232"},{"text":"v","color":"#f13232"},{"text":"e","color":"#f23333"},{"text":"a ","color":"#f23434"},{"text":"s","color":"#f33434"},{"text":"o","color":"#f43535"},{"text":"br","color":"#f53636"},{"text":"e","color":"#f63737"},{"text":"vi","color":"#f73838"},{"text":"v","color":"#f83939"},{"text":"ir ","color":"#f93a3a"},{"text":"y ","color":"#fa3b3b"},{"text":"hu","color":"#fb3c3c"},{"text":"y","color":"#fc3d3d"},{"text":"e","color":"#fd3e3e"},{"text":".","color":"red"}]
execute if score #supervivencia-zombis ZombieBuff matches 195..390 run tp @e[type=#zombies,limit=20] @r[gamemode=!spectator]
execute if score #supervivencia-zombis ZombieBuff matches 0..195 run execute as @a[tag=!sesion_no_iniciada] run tp @e[type=#zombies,limit=10,distance=10..] @s[gamemode=!spectator]
execute if score #supervivencia-zombis ZombieBuff matches ..0 run function kitpvp:solitario/hordas/victoria/victoria