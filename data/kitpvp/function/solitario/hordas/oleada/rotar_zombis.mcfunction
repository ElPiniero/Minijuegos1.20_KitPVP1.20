execute if data storage modo_de_pvp {Mapa:"habitacion"} run return run rotate @s facing entity @p[tag=target] eyes
data merge storage supervivencia-zombis {Rotacion:{rotada:0}}
execute store result storage supervivencia-zombis Rotacion.rotada int 1 run random value -180..180
function kitpvp:solitario/hordas/oleada/rotados_zombis with storage supervivencia-zombis Rotacion