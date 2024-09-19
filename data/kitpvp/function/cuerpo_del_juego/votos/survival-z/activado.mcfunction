scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
tag @a[tag=!sesion_no_iniciada] remove s-z-afavor
execute as @a[tag=!sesion_no_iniciada] at @s run function kitpvp:cuerpo_del_juego/trigger_zona_de_kits
tellraw @a[tag=!sesion_no_iniciada] [{"text": "Subminijuego activado con ","color": "green"},{"score":{"objective":"Conteo","name":"#favor-s-z"},"color": "gold","bold": true},{"text": "/","color": "gold"},{"score":{"objective":"Conteo","name":"#jugadores"},"color": "gold","bold": true},{"text": " votos","color": "gold"}]
playsound block.note_block.harp master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10000 2
tag @a[tag=!sesion_no_iniciada] add supervivencia-z
scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada,gamemode=!spectator] run scoreboard players add #jugadores-vivos Conteo 1
execute as @a[tag=!sesion_no_iniciada] run team join Supervivientes
data merge storage supervivencia-zombis {Horda:"sin_iniciar"}
data merge storage supervivencia-zombis {Dificultad:"sin_iniciar"}
data merge storage supervivencia-zombis {Iniciado:0b}
data merge storage supervivencia-zombis {Activado:1b}
fill 10 232 141 10 232 139 air
fill 9 232 141 9 232 139 red_nether_bricks
data remove storage modo_de_pvp Modo
setblock 10 231 140 air
setblock 9 231 140 lime_concrete
setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/kitpvp_survival-z_no"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}
setblock 9 230 139 light_gray_concrete
setblock 9 230 140 light_gray_concrete
setblock 9 230 141 light_gray_concrete
setblock 10 230 139 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['[{"text":"F","color":"green"},{"text":"A","color":"#2fee2f"},{"text":"C","color":"#1fde1f"},{"text":"I","color":"#0fce0f"},{"text":"L","color":"dark_green"}]','{"text": "Los caidos","color": "gray","bold": false}','{"text": "resucitan cada","color": "gray","bold": false}','{"text": "10 segundos","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/carteles/facil"}}']}}
setblock 10 230 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['[{"text":"N","color":"yellow"},{"text":"O","color":"#f6eb3c"},{"text":"R","color":"#efd93a"},{"text":"M","color":"#e7c738"},{"text":"A","color":"#e0b536"},{"text":"L","color":"gold"}]','{"text": "Los caidos","color": "gray","bold": false}','{"text": "resucitan por","color": "gray","bold": false}','{"text": "tumbas y ayuda","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/carteles/normal"}}']}}
setblock 10 230 141 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['[{"text":"D","color":"red"},{"text":"I","color":"#f33434"},{"text":"F","color":"#e82a2a"},{"text":"I","color":"#de1f1f"},{"text":"C","color":"#d31515"},{"text":"I","color":"#c80a0a"},{"text":"L","color":"dark_red"}]','{"text": "Los caidos","color": "gray","bold": false}','{"text": "se convierten","color": "gray","bold": false}','{"text": "en zombis","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/carteles/dificil"}}']}}
function kitpvp:cuerpo_del_juego/carteles/normal
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_activar
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar
scoreboard players reset #tiempo-s-z Tiempo
scoreboard players reset #favor-s-z Conteo