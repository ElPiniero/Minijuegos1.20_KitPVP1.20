scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
tellraw @a[tag=!sesion_no_iniciada] [{"text": "Iniciando una votacion para desactivar el subminijuego ","color": "light_purple"},{"text": "SUPERVIVENCIA ZOMBIS","color": "dark_red","bold": true},{"text": ", 10 segundos para terminar","color": "light_purple"}]
playsound block.note_block.harp master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10000 2
scoreboard players reset #tiempo-s-z Tiempo
scoreboard players add #tiempo-s-z Tiempo 10
tag @a[tag=!sesion_no_iniciada] add en_votacion
function kitpvp:cuerpo_del_juego/votos/survival-z/s-z_en_contra
schedule function kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar 1s