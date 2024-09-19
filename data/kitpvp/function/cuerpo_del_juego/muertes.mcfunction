playsound entity.enderman.death master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
particle portal ~ ~1 ~ .1 .1 .1 1 100 normal
execute as @a[tag=Creeper,tag=!sesion_no_iniciada] run function kitpvp:kits/creeper/logro_tevascarnal
execute if score @s Muerte_por_Escuadron matches 1.. on attacker if entity @s[type=skeleton,tag=Tropa_Escuadron] at @s run tag @s add leatinetropa
execute if score @s Muerte_por_Escuadron matches 1.. on attacker if entity @s[type=skeleton,tag=Tropa_Escuadron,tag=leatinetropa] at @s run function kitpvp:kits/sicario/escuadrones/meatinaron
execute if score @s Muerte_por_Escuadron matches 1.. run scoreboard players reset @s Muerte_por_Escuadron
execute if entity @a[tag=!sesion_no_iniciada,tag=survival-ejecutandose] run tag @s remove Jugador_Vivo
execute unless entity @s[tag=Jugador_Zombi] if entity @a[tag=!sesion_no_iniciada,tag=!survival-ejecutandose] run tag @s add zona_de_kits
execute unless entity @s[tag=Jugador_Zombi] if entity @a[tag=!sesion_no_iniciada,tag=!survival-ejecutandose] if data storage modo_de_pvp {Modo:"eliminacion"} run function kitpvp:cuerpo_del_juego/zona_de_kits
execute unless entity @s[tag=Jugador_Zombi] if entity @a[tag=!sesion_no_iniciada,tag=!survival-ejecutandose] if data storage modo_de_pvp {Modo:"arena"} run function kitpvp:cuerpo_del_juego/muertes_arena
execute unless entity @s[tag=Jugador_Zombi] if entity @a[tag=!sesion_no_iniciada,tag=survival-ejecutandose,tag=survival-facil] run function kitpvp:solitario/muerte-facil
execute unless entity @s[tag=Jugador_Zombi] if entity @a[tag=!sesion_no_iniciada,tag=survival-ejecutandose,tag=survival-normal] run function kitpvp:solitario/muerte-normal
execute if entity @s[tag=Jugador_Zombi] run function kitpvp:solitario/muerte-zombi
execute unless entity @s[tag=Jugador_Zombi] if entity @a[tag=!sesion_no_iniciada,tag=survival-ejecutandose,tag=survival-dificil] run function kitpvp:solitario/muerte-dificil
scoreboard players reset @s Muertes