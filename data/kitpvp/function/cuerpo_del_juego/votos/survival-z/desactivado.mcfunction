scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
execute as @a[tag=!sesion_no_iniciada] at @s run function kitpvp:cuerpo_del_juego/trigger_zona_de_kits
tellraw @a[tag=!sesion_no_iniciada] [{"text": "Subminijuego desactivado con ","color": "green"},{"score":{"objective":"Z-S_EnContra","name":"#contra-s-z"},"color": "gold","bold": true},{"text": "/","color": "gold"},{"score":{"objective":"Conteo","name":"#jugadores"},"color": "gold","bold": true},{"text": " votos","color": "gold"}]
playsound block.note_block.harp master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10000 2
tag @a[tag=!sesion_no_iniciada] remove supervivencia-z
execute as @a[tag=!sesion_no_iniciada] run team leave @s
scoreboard objectives setdisplay sidebar muertes_jugador
data merge storage supervivencia-zombis {Horda:"sin_iniciar"}
data merge storage supervivencia-zombis {Dificultad:"sin_iniciar"}
data merge storage supervivencia-zombis {Iniciado:0b}
data merge storage supervivencia-zombis {Activado:0b}
tag @a[tag=!sesion_no_iniciada] remove survival-facil
tag @a[tag=!sesion_no_iniciada] remove survival-normal
tag @a[tag=!sesion_no_iniciada] remove survival-dificil
function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/eliminacion
stopsound @a master music.nether.soul_sand_valley
stopsound @a master music_disc.13
setblock 10 231 140 air
setblock 9 231 140 light_gray_concrete
setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/kitpvp_survival-z_si"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}
setblock 9 230 139 red_nether_bricks
setblock 9 230 140 red_nether_bricks
setblock 9 230 141 red_nether_bricks
setblock 10 230 139 air
setblock 10 230 140 air
setblock 10 230 141 air
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_activar
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar
scoreboard players reset #tiempo-s-z
scoreboard players reset #contra-s-z
tag @a[tag=!sesion_no_iniciada] remove s-z-encontra
tag @a[tag=!sesion_no_iniciada] remove en_votacion