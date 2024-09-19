schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_activar
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar
scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
scoreboard players reset #tiempo-s-z
scoreboard players reset #favor-s-z
scoreboard players reset #contra-s-z
setblock 10 231 140 air
execute unless entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run setblock 9 231 140 light_gray_concrete
execute unless entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/execute if block 9 231 140 light_gray_concrete run function kitpvp:cuerpo_del_juego/kitpvp_survival-z_si"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}
execute if entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run setblock 9 231 140 lime_concrete
execute if entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/execute as @p run function kitpvp:cuerpo_del_juego/kitpvp_survival-z_no"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}
tag @a[tag=!sesion_no_iniciada] remove s-z-afavor
tag @a[tag=!sesion_no_iniciada] remove s-z-encontra
tag @a[tag=!sesion_no_iniciada] remove en_votacion