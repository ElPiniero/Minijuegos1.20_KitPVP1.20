execute if score #luz Conteo matches 15 run return fail
data merge storage base {luz:{luz:0}}
execute store result storage base luz.luz int 1 run scoreboard players get #luz Conteo
function kitpvp:cuerpo_del_juego/intro/proceso with storage base luz
scoreboard players add #luz Conteo 1
schedule function kitpvp:cuerpo_del_juego/intro/inicio 1t