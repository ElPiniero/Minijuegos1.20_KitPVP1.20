scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
tellraw @a[tag=!sesion_no_iniciada] [{"text": "Iniciando una votacion para reiniciar el subminijuego ","color": "light_purple"},{"text": "SUPERVIVENCIA ZOMBIS","color": "dark_red","bold": true},{"text": ", 10 segundos para terminar","color": "light_purple"}]
playsound block.note_block.harp master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10000 2
scoreboard players reset #tiempo-s-z Tiempo
scoreboard players add #tiempo-s-z Tiempo 10
function kitpvp:cuerpo_del_juego/votos/survival-z/reinicio/s-z_a_favor
schedule function kitpvp:cuerpo_del_juego/votos/survival-z/reinicio/conteo_activar 1s