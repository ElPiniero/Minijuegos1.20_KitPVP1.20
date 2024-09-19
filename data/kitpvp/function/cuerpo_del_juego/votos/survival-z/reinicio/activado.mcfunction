tellraw @a[tag=!sesion_no_iniciada] [{"text": "Subminijuego reiniciado","color": "green","bold": true}]
playsound block.note_block.harp master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10000 2
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/reinicio/conteo_activar
scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
scoreboard players reset #tiempo-s-z
scoreboard players reset #favor-s-z
tag @a[tag=!sesion_no_iniciada] remove reinicio-afavor
function kitpvp:solitario/reinicio