$execute if data storage jugador.$(id) {KitPVP:{Ingresado:1b}} run return fail
$data merge storage jugador.$(id) {KitPVP:{Ingresado:1b}}
tag @s remove sesion_no_iniciada
execute unless data storage supervivencia-zombis {Activado:1b} run function kitpvp:cuerpo_del_juego/zona_de_kits
execute if data storage supervivencia-zombis {Activado:1b} run function kitpvp:cuerpo_del_juego/bienvenida