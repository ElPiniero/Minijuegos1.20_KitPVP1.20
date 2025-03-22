summon interaction -165 64 64 {Tags:["Zombi-spawn"]}
summon interaction -137 63 86 {Tags:["Zombi-spawn"]}
summon interaction 30 68 87 {Tags:["Zombi-spawn"]}
summon interaction 70 73 56 {Tags:["Zombi-spawn"]}
summon interaction 60 69 -111 {Tags:["Zombi-spawn"]}
summon interaction 29 67 -142 {Tags:["Zombi-spawn"]}
summon interaction -135 76 -134 {Tags:["Zombi-spawn"]}
summon interaction -169 72 -108 {Tags:["Zombi-spawn"]}
summon interaction -178 72 -146 {Tags:["ola-spawn"]}
summon interaction -186 70 104 {Tags:["ola-spawn"]}
summon interaction 88 69 100 {Tags:["ola-spawn"]}
summon interaction 79 67 -148 {Tags:["ola-spawn"]}
scoreboard players set #supervivencia-zombis ZombieBuff 0
bossbar set lvl1 value 0
bossbar set lvl1 max 280
kill @e[type=ender_pearl]
bossbar set lvl1 color white
data merge storage supervivencia-zombis {Horda:"1"}
data merge storage supervivencia-zombis {Iniciado:1b}
scoreboard objectives setdisplay sidebar ZombieShop
schedule function kitpvp:solitario/hordas/oleada/mini_ola_trigger 1s
function kitpvp:solitario/hordas/horda_1
function kitpvp:solitario/producto_tienda
function kitpvp:cuerpo_del_juego/limpieza_items
function kitpvp:solitario/materiales_cortos
schedule clear kitpvp:cuerpo_del_juego/entidades-trampa
team join Supervivientes @a
tag @a[tag=!sesion_no_iniciada] add survival-ejecutandose
tag @a[tag=!sesion_no_iniciada,tag=s-z-afavor] add Jugador_Vivo
stopsound @a[tag=!sesion_no_iniciada] master music.creative
stopsound @a[tag=!sesion_no_iniciada] master music.nether.soul_sand_valley
execute as @a[tag=!sesion_no_iniciada] at @s if score @s Musica matches 1.. run function kitpvp:cuerpo_del_juego/musica/reiniciar_musica
playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
playsound entity.zombie.ambient master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0.7 1
bossbar set lvl1 visible true
bossbar set lvl1 players @a[tag=!sesion_no_iniciada]
title @a[tag=!sesion_no_iniciada] times 20 200 20
title @a[tag=!sesion_no_iniciada] subtitle [{"text":""},{"text":"\u00bf","bold":true,"color":"dark_red"},{"text":"P","bold":true,"color":"#b40404"},{"text":"u","bold":true,"color":"#ab0909"},{"text":"e","bold":true,"color":"#a10e0e"},{"text":"d","bold":true,"color":"#981212"},{"text":"e","bold":true,"color":"#8e1717"},{"text":"s ","bold":true,"color":"#851c1c"},{"text":"s","bold":true,"color":"#7c2020"},{"text":"o","bold":true,"color":"#722525"},{"text":"b","bold":true,"color":"#692a2a"},{"text":"r","bold":true,"color":"#5f2e2e"},{"text":"e","bold":true,"color":"#563333"},{"text":"v","bold":true,"color":"#4d3838"},{"text":"iv","bold":true,"color":"#433c3c"},{"text":"i","bold":true,"color":"#4d3838"},{"text":"r ","bold":true,"color":"#563333"},{"text":"l","bold":true,"color":"#5f2e2e"},{"text":"a","bold":true,"color":"#692a2a"},{"text":"s ","bold":true,"color":"#722525"},{"text":"5 ","bold":true,"color":"#7c2020"},{"text":"h","bold":true,"color":"#851c1c"},{"text":"o","bold":true,"color":"#8e1717"},{"text":"r","bold":true,"color":"#981212"},{"text":"d","bold":true,"color":"#a10e0e"},{"text":"a","bold":true,"color":"#ab0909"},{"text":"s","bold":true,"color":"#b40404"},{"text":"?","bold":true,"color":"dark_red"}]
title @a[tag=!sesion_no_iniciada] title [{"text":""},{"text":"S","bold":true,"color":"dark_gray"},{"text":"U","bold":true,"color":"#4d3838"},{"text":"P","bold":true,"color":"#5b3131"},{"text":"E","bold":true,"color":"#692a2a"},{"text":"R","bold":true,"color":"#772323"},{"text":"V","bold":true,"color":"#851c1c"},{"text":"I","bold":true,"color":"#931515"},{"text":"V","bold":true,"color":"#a10e0e"},{"text":"E","bold":true,"color":"#af0707"},{"text":"N","bold":true,"color":"dark_red"},{"text":"C","bold":true,"color":"#af0707"},{"text":"I","bold":true,"color":"#a10e0e"},{"text":"A ","bold":true,"color":"#931414"},{"text":"Z","bold":true,"color":"#851c1c"},{"text":"O","bold":true,"color":"#772323"},{"text":"M","bold":true,"color":"#692a2a"},{"text":"B","bold":true,"color":"#5b3030"},{"text":"I","bold":true,"color":"#4d3838"},{"text":"S","bold":true,"color":"dark_gray"}]