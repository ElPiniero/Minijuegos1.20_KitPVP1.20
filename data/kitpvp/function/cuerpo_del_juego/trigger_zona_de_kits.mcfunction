execute as @s[tag=!sesion_no_iniciada,tag=!s-z-afavor,tag=!zona_de_kits] unless data storage supervivencia-zombis {Iniciado:1b} run function kitpvp:cuerpo_del_juego/zona_de_kits
execute as @s[tag=!sesion_no_iniciada,tag=!s-z-afavor,tag=!zona_de_kits] if data storage supervivencia-zombis {Iniciado:1b} run function kitpvp:cuerpo_del_juego/zona_de_kits_sz
