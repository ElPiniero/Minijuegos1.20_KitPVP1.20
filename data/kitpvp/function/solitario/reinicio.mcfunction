scoreboard players set #derrota ZombieBuff 0
schedule function kitpvp:cuerpo_del_juego/votos/survival-z/activado 5t
execute if data storage supervivencia-zombis {Dificultad:"facil"} run schedule function kitpvp:cuerpo_del_juego/carteles/facil 6t
execute if data storage supervivencia-zombis {Dificultad:"normal"} run schedule function kitpvp:cuerpo_del_juego/carteles/normal 6t
function kitpvp:cuerpo_del_juego/limpieza
function kitpvp:cuerpo_del_juego/scores
execute as @a[tag=!sesion_no_iniciada] run function kitpvp:cuerpo_del_juego/zona_de_kits