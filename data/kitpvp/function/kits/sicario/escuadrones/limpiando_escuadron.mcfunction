execute unless score @p[tag=!sesion_no_iniciada,tag=Sicario,tag=!revisado] INESoldado = @s INESoldado run tag @p[tag=!sesion_no_iniciada,tag=Sicario,tag=!revisado] add revisado
execute if score @p[tag=!sesion_no_iniciada,tag=Sicario,tag=!revisado] INESoldado = @s INESoldado run tag @p[tag=!sesion_no_iniciada,tag=Sicario,tag=!revisado] add revisado
execute if score @p[tag=!sesion_no_iniciada,tag=Sicario,tag=revisado] INESoldado = @s INESoldado run function kitpvp:cuerpo_del_juego/tag_muerte
execute if entity @p[tag=!sesion_no_iniciada,tag=Sicario,tag=!revisado] run function kitpvp:kits/sicario/escuadrones/encontrar_escuadron
