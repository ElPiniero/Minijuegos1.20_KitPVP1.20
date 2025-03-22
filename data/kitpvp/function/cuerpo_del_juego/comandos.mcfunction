scoreboard players enable @s kitpvp
scoreboard players enable @s kitpvp-estadisticas
scoreboard players enable @s kitpvp-reiniciar-juego
scoreboard players enable @s kitpvp-reiniciar-musica
scoreboard players enable @s kitpvp-zona-de-kits
scoreboard players enable @s kitpvp-parar-musica

execute if score @s kitpvp matches 1 run function kitpvp:cuerpo_del_juego/informacion
execute if score @s kitpvp-estadisticas matches 1 run function kitpvp:cuerpo_del_juego/estadisticas
execute if score @s kitpvp-reiniciar-juego matches 1 if data storage supervivencia-zombis {Iniciado:1b} unless entity @a[tag=!sesion_no_iniciada,tag=reinicio-afavor] as @s[tag=!reinicio-afavor] run function kitpvp:cuerpo_del_juego/votos/survival-z/reinicio/activando
execute if score @s kitpvp-reiniciar-juego matches 1 if data storage supervivencia-zombis {Iniciado:1b} if entity @a[tag=!sesion_no_iniciada,tag=reinicio-afavor] as @s[tag=!reinicio-afavor] run function kitpvp:cuerpo_del_juego/votos/survival-z/reinicio/s-z_a_favor
execute if score @s kitpvp-reiniciar-musica matches 1 run function kitpvp:cuerpo_del_juego/musica/reiniciar_musica
execute if score @s kitpvp-parar-musica matches 1 run function kitpvp:cuerpo_del_juego/musica/parar_musica
execute if score @s kitpvp-zona-de-kits matches 1 run function kitpvp:cuerpo_del_juego/trigger_zona_de_kits

execute if score @s kitpvp matches 1.. run scoreboard players reset @s kitpvp
execute if score @s kitpvp-estadisticas matches 1.. run scoreboard players reset @s kitpvp-estadisticas
execute if score @s kitpvp-reiniciar-juego matches 1.. run scoreboard players reset @s kitpvp-reiniciar-juego
execute if score @s kitpvp-reiniciar-musica matches 1.. run scoreboard players reset @s kitpvp-reiniciar-musica
execute if score @s kitpvp-parar-musica matches 1.. run scoreboard players reset @s kitpvp-parar-musica
execute if score @s kitpvp-zona-de-kits matches 1.. run scoreboard players reset @s kitpvp-zona-de-kits