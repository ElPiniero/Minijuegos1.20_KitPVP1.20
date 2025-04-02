data merge storage modo_de_pvp {Id_de_usuario:{id:0}}
execute store result storage modo_de_pvp Id_de_usuario.id int 1 run scoreboard players get @s id-de-usuario
function kitpvp:cuerpo_del_juego/intro/primer-ingreso with storage modo_de_pvp Id_de_usuario
execute as @s[tag=primeringresowey] run return run tag @s remove primeringresowey

scoreboard players reset @s joinGameKit
function kitpvp:cuerpo_del_juego/limpieza_personal
#scoreboard players operation @s[advancements={kitpvp:kitpvp/kitpvp=false}] bajas_jugador = @s muertes_jugador
#scoreboard players set @s[advancements={kitpvp:kitpvp/kitpvp=false}] Racha_mas_Alta 0
#scoreboard players set @s[advancements={kitpvp:kitpvp/kitpvp=false}] Mejores_Diamantes 0
advancement grant @s only kitpvp:kitpvp/kitpvp
scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
stopsound @s master music_disc.chirp
tag @s add zona_de_kits
scoreboard players set @s Conteo_Racha 2
execute unless data storage supervivencia-zombis {Iniciado:1b} run tp @s 14 231 140 -90 0
execute unless data storage supervivencia-zombis {Iniciado:1b} run scoreboard players set @s Musica 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run title @s times 20 100 20
execute unless data storage supervivencia-zombis {Iniciado:1b} run title @s subtitle [{"text":""},{"text":"| ","bold":true,"color":"green","obfuscated": true},{"text": "R E F O R M A","color": "light_purple","bold": true},{"text":" |","bold":true,"color":"green","obfuscated": true}]
execute unless data storage supervivencia-zombis {Iniciado:1b} run title @s title [{"text":""},{"text":"| ","bold":true,"color":"green","obfuscated": true},{"text":"KIT PVP","bold":true,"color":"gold"},{"text":" |","bold":true,"color":"green","obfuscated": true}]
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.smithing_table.use master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run function kitpvp:cuerpo_del_juego/zona_de_kits
execute unless data storage supervivencia-zombis {Iniciado:1b} run return fail

tag @s add espectador
tag @s remove Jugador_Vivo
gamemode spectator @s
effect clear @s
effect give @s saturation infinite 10 true
effect give @s resistance infinite 4 true
xp set @s 0 levels
xp set @s 0 points
execute if data storage modo_de_pvp {Mapa:"pueblo"} run tp @s -56 71 -24
execute if data storage modo_de_pvp {Mapa:"aldea"} run tp @s -112 125 192
execute if data storage modo_de_pvp {Mapa:"habitacion"} run tp @s -320 110 -32
clear @s
playsound block.respawn_anchor.set_spawn master @s ~ ~ ~ 100 0 1
playsound entity.zombie.ambient master @s ~ ~ ~ 100 0.7 1
bossbar set lvl1 players @a[tag=!sesion_no_iniciada]
title @s times 20 100 20
title @s subtitle [{"text":""},{"text":"\u00bf","bold":true,"color":"dark_red"},{"text":"P","bold":true,"color":"#b40404"},{"text":"u","bold":true,"color":"#ab0909"},{"text":"e","bold":true,"color":"#a10e0e"},{"text":"d","bold":true,"color":"#981212"},{"text":"e","bold":true,"color":"#8e1717"},{"text":"s ","bold":true,"color":"#851c1c"},{"text":"s","bold":true,"color":"#7c2020"},{"text":"o","bold":true,"color":"#722525"},{"text":"b","bold":true,"color":"#692a2a"},{"text":"r","bold":true,"color":"#5f2e2e"},{"text":"e","bold":true,"color":"#563333"},{"text":"v","bold":true,"color":"#4d3838"},{"text":"iv","bold":true,"color":"#433c3c"},{"text":"i","bold":true,"color":"#4d3838"},{"text":"r ","bold":true,"color":"#563333"},{"text":"l","bold":true,"color":"#5f2e2e"},{"text":"a","bold":true,"color":"#692a2a"},{"text":"s ","bold":true,"color":"#722525"},{"text":"5 ","bold":true,"color":"#7c2020"},{"text":"h","bold":true,"color":"#851c1c"},{"text":"o","bold":true,"color":"#8e1717"},{"text":"r","bold":true,"color":"#981212"},{"text":"d","bold":true,"color":"#a10e0e"},{"text":"a","bold":true,"color":"#ab0909"},{"text":"s","bold":true,"color":"#b40404"},{"text":"?","bold":true,"color":"dark_red"}]
title @s title [{"text":""},{"text":"S","bold":true,"color":"dark_gray"},{"text":"U","bold":true,"color":"#4d3838"},{"text":"P","bold":true,"color":"#5b3131"},{"text":"E","bold":true,"color":"#692a2a"},{"text":"R","bold":true,"color":"#772323"},{"text":"V","bold":true,"color":"#851c1c"},{"text":"I","bold":true,"color":"#931515"},{"text":"V","bold":true,"color":"#a10e0e"},{"text":"E","bold":true,"color":"#af0707"},{"text":"N","bold":true,"color":"dark_red"},{"text":"C","bold":true,"color":"#af0707"},{"text":"I","bold":true,"color":"#a10e0e"},{"text":"A ","bold":true,"color":"#931414"},{"text":"Z","bold":true,"color":"#851c1c"},{"text":"O","bold":true,"color":"#772323"},{"text":"M","bold":true,"color":"#692a2a"},{"text":"B","bold":true,"color":"#5b3030"},{"text":"I","bold":true,"color":"#4d3838"},{"text":"S","bold":true,"color":"dark_gray"}]
tag @s add survival-ejecutandose
team join Supervivientes
tag @s add supervivencia-z
execute if data storage supervivencia-zombis {Dificultad:"facil"} run tag @s add survival-facil
execute if data storage supervivencia-zombis {Dificultad:"normal"} run tag @s add survival-normal
execute if data storage supervivencia-zombis {Dificultad:"dificil"} run tag @s add survival-dificil