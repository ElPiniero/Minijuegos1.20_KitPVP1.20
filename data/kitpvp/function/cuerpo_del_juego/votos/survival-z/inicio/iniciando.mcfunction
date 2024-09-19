scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
tellraw @a[tag=!sesion_no_iniciada] {"text":"El subminijuego empezara en 10 segundos ","color": "dark_red","bold": true}
scoreboard players reset #tiempo-s-z Tiempo
scoreboard players add #tiempo-s-z Tiempo 10
tag @a[tag=!sesion_no_iniciada] add yamero-survival-z
setblock 10 231 140 air
setblock 9 231 140 red_nether_bricks
setblock 9 230 139 red_nether_bricks
setblock 9 230 140 red_nether_bricks
setblock 9 230 141 red_nether_bricks
setblock 10 230 139 air
setblock 10 230 140 air
setblock 10 230 141 air
function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/s-z_a_favor
schedule function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/conteo_iniciar 1s
function kitpvp:solitario/el_mejor_consejo