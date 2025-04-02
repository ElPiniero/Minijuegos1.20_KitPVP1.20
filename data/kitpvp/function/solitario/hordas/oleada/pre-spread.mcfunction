data merge storage supervivencia-zombis {Capa:{y:0}}
execute store result score #capa-base Conteo run data get entity @p[tag=target] Pos.[1]
execute store result storage supervivencia-zombis Capa.y int 1 run scoreboard players add #capa-base Conteo 10
function kitpvp:solitario/hordas/oleada/spread with storage supervivencia-zombis Capa