function kitpvp:cuerpo_del_juego/limpieza_personal
scoreboard players operation @s[advancements={kitpvp:kitpvp/kitpvp=false}] bajas_jugador = @s muertes_jugador
scoreboard players set @s[advancements={kitpvp:kitpvp/kitpvp=false}] Racha_mas_Alta 0
scoreboard players set @s[advancements={kitpvp:kitpvp/kitpvp=false}] Mejores_Diamantes 0
advancement grant @s only kitpvp:kitpvp/kitpvp
scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
stopsound @s master music_disc.chirp
function kitpvp:kits/ine-soldado
tag @s add zona_de_kits
scoreboard players set @s Conteo_Racha 2
execute unless data storage supervivencia-zombis {Iniciado:1b} run gamemode adventure @s
execute unless data storage supervivencia-zombis {Iniciado:1b} run tp @s 14 231 140 -90 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run scoreboard players set @s Musica 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run function kitpvp:cuerpo_del_juego/zona_de_kits
execute unless data storage supervivencia-zombis {Iniciado:1b} run title @s times 20 100 20
execute unless data storage supervivencia-zombis {Iniciado:1b} run title @s subtitle [{"text":""},{"text":"P","bold":true,"color":"light_purple"},{"text":"e","bold":true,"color":"#f74fdc"},{"text":"l","bold":true,"color":"#f160ba"},{"text":"e","bold":true,"color":"#eb7199"},{"text":"a","bold":true,"color":"#e58177"},{"text":"s ","bold":true,"color":"#df9255"},{"text":"c","bold":true,"color":"gold"},{"text":"o","bold":true,"color":"#bfb235"},{"text":"n ","bold":true,"color":"#a5c137"},{"text":"k","bold":true,"color":"#8cd039"},{"text":"i","bold":true,"color":"#72df3b"},{"text":"t","bold":true,"color":"#58ee3d"},{"text":"s ","bold":true,"color":"green"},{"text":"e","bold":true,"color":"#5ede3f"},{"text":"s","bold":true,"color":"#7ebe3f"},{"text":"p","bold":true,"color":"#9e9e3f"},{"text":"e","bold":true,"color":"#be7e3f"},{"text":"c","bold":true,"color":"#de5e3f"},{"text":"i","bold":true,"color":"red"},{"text":"a","bold":true,"color":"#de5e3f"},{"text":"l","bold":true,"color":"#be7e3f"},{"text":"e","bold":true,"color":"#9e9e3f"},{"text":"s ","bold":true,"color":"#7ebe3f"},{"text":"y ","bold":true,"color":"#5ede3f"},{"text":"u","bold":true,"color":"green"},{"text":"n","bold":true,"color":"#58ee3d"},{"text":"i","bold":true,"color":"#72df3b"},{"text":"c","bold":true,"color":"#8cd039"},{"text":"o","bold":true,"color":"#a5c137"},{"text":"s ","bold":true,"color":"#bfb235"},{"text":"c","bold":true,"color":"gold"},{"text":"a","bold":true,"color":"#df9255"},{"text":"d","bold":true,"color":"#e58177"},{"text":"a ","bold":true,"color":"#eb7199"},{"text":"u","bold":true,"color":"#f160ba"},{"text":"n","bold":true,"color":"#f74fdc"},{"text":"o","bold":true,"color":"light_purple"}]
execute unless data storage supervivencia-zombis {Iniciado:1b} run title @s title [{"text":""},{"text":"| ","bold":true,"color":"light_purple","obfuscated": true},{"text":"K","bold":true,"color":"#f751d9"},{"text":"I","bold":true,"color":"#f063b4"},{"text":"T","bold":true,"color":"#e9758f"},{"text":"P","bold":true,"color":"#e3876b"},{"text":"VP ","bold":true,"color":"#dc9946"},{"text":"1","bold":true,"color":"#e3876b"},{"text":".","bold":true,"color":"#e9758f"},{"text":"2","bold":true,"color":"#f063b4"},{"text":"0 ","bold":true,"color":"#f751d9"},{"text":"|","bold":true,"color":"light_purple","obfuscated": true}]
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.smithing_table.use master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute unless data storage supervivencia-zombis {Iniciado:1b} run playsound block.beacon.activate master @s 14 231 140 1 0 1
execute if data storage supervivencia-zombis {Iniciado:1b} run tag @s add espectador
execute if data storage supervivencia-zombis {Iniciado:1b} run tag @s remove Jugador_Vivo
execute if data storage supervivencia-zombis {Iniciado:1b} run gamemode spectator @s
execute if data storage supervivencia-zombis {Iniciado:1b} run effect clear @s
execute if data storage supervivencia-zombis {Iniciado:1b} run effect give @s saturation infinite 10 true
execute if data storage supervivencia-zombis {Iniciado:1b} run effect give @s resistance infinite 4 true
execute if data storage supervivencia-zombis {Iniciado:1b} run xp set @s 0 levels
execute if data storage supervivencia-zombis {Iniciado:1b} run xp set @s 0 points
execute if data storage supervivencia-zombis {Iniciado:1b} run tp @s -56.00001 71 -24.00001
execute if data storage supervivencia-zombis {Iniciado:1b} run clear @s
execute if data storage supervivencia-zombis {Iniciado:1b} run playsound block.respawn_anchor.set_spawn master @s ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Iniciado:1b} run playsound entity.zombie.ambient master @s -56.00001 71 -24.00001 100 0.7 1
execute if data storage supervivencia-zombis {Iniciado:1b} run bossbar set lvl1 players @a[tag=!sesion_no_iniciada]
execute if data storage supervivencia-zombis {Iniciado:1b} run title @s times 20 100 20
execute if data storage supervivencia-zombis {Iniciado:1b} run title @s subtitle [{"text":""},{"text":"\u00bf","bold":true,"color":"dark_red"},{"text":"P","bold":true,"color":"#b40404"},{"text":"u","bold":true,"color":"#ab0909"},{"text":"e","bold":true,"color":"#a10e0e"},{"text":"d","bold":true,"color":"#981212"},{"text":"e","bold":true,"color":"#8e1717"},{"text":"s ","bold":true,"color":"#851c1c"},{"text":"s","bold":true,"color":"#7c2020"},{"text":"o","bold":true,"color":"#722525"},{"text":"b","bold":true,"color":"#692a2a"},{"text":"r","bold":true,"color":"#5f2e2e"},{"text":"e","bold":true,"color":"#563333"},{"text":"v","bold":true,"color":"#4d3838"},{"text":"iv","bold":true,"color":"#433c3c"},{"text":"i","bold":true,"color":"#4d3838"},{"text":"r ","bold":true,"color":"#563333"},{"text":"l","bold":true,"color":"#5f2e2e"},{"text":"a","bold":true,"color":"#692a2a"},{"text":"s ","bold":true,"color":"#722525"},{"text":"5 ","bold":true,"color":"#7c2020"},{"text":"h","bold":true,"color":"#851c1c"},{"text":"o","bold":true,"color":"#8e1717"},{"text":"r","bold":true,"color":"#981212"},{"text":"d","bold":true,"color":"#a10e0e"},{"text":"a","bold":true,"color":"#ab0909"},{"text":"s","bold":true,"color":"#b40404"},{"text":"?","bold":true,"color":"dark_red"}]
execute if data storage supervivencia-zombis {Iniciado:1b} run title @s title [{"text":""},{"text":"S","bold":true,"color":"dark_gray"},{"text":"U","bold":true,"color":"#4d3838"},{"text":"P","bold":true,"color":"#5b3131"},{"text":"E","bold":true,"color":"#692a2a"},{"text":"R","bold":true,"color":"#772323"},{"text":"V","bold":true,"color":"#851c1c"},{"text":"I","bold":true,"color":"#931515"},{"text":"V","bold":true,"color":"#a10e0e"},{"text":"E","bold":true,"color":"#af0707"},{"text":"N","bold":true,"color":"dark_red"},{"text":"C","bold":true,"color":"#af0707"},{"text":"I","bold":true,"color":"#a10e0e"},{"text":"A ","bold":true,"color":"#931414"},{"text":"Z","bold":true,"color":"#851c1c"},{"text":"O","bold":true,"color":"#772323"},{"text":"M","bold":true,"color":"#692a2a"},{"text":"B","bold":true,"color":"#5b3030"},{"text":"I","bold":true,"color":"#4d3838"},{"text":"S","bold":true,"color":"dark_gray"}]
execute if data storage supervivencia-zombis {Iniciado:1b} run tag @s add survival-ejecutandose
execute if data storage supervivencia-zombis {Activado:1b} run team join Supervivientes
execute if data storage supervivencia-zombis {Activado:1b} run tag @s add supervivencia-z
execute if data storage supervivencia-zombis {Dificultad:"facil"} run tag @s add survival-facil
execute if data storage supervivencia-zombis {Dificultad:"normal"} run tag @s add survival-normal
execute if data storage supervivencia-zombis {Dificultad:"dificil"} run tag @s add survival-dificil
scoreboard players reset @s joinGameKit