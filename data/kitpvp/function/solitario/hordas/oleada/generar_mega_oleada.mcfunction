tag @r[tag=!sesion_no_iniciada,gamemode=!spectator] add target
execute unless data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 40 ~ if data storage supervivencia-zombis {Horda:"2"} run function kitpvp:solitario/hordas/oleada/oleada_2
execute unless data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 40 ~ if data storage supervivencia-zombis {Horda:"3"} run function kitpvp:solitario/hordas/oleada/oleada_3
execute unless data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 40 ~ if data storage supervivencia-zombis {Horda:"4"} run function kitpvp:solitario/hordas/oleada/oleada_4
execute unless data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 40 ~ if data storage supervivencia-zombis {Horda:"5"} run function kitpvp:solitario/hordas/oleada/oleada_5

execute if data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 150 ~ if data storage supervivencia-zombis {Horda:"2"} run function kitpvp:solitario/hordas/oleada/oleada_2
execute if data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 150 ~ if data storage supervivencia-zombis {Horda:"3"} run function kitpvp:solitario/hordas/oleada/oleada_3
execute if data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 150 ~ if data storage supervivencia-zombis {Horda:"4"} run function kitpvp:solitario/hordas/oleada/oleada_4
execute if data storage modo_de_pvp {Mapa:"habitacion"} at @p[tag=target] positioned ~ 150 ~ if data storage supervivencia-zombis {Horda:"5"} run function kitpvp:solitario/hordas/oleada/oleada_5

execute as @e[type=#zombies,tag=jefes_guia] run data merge entity @s {NoGravity:1b}
tag @a remove target
function kitpvp:solitario/hordas/oleada/activar-mega-oleada