execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 10 230 139 air
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 10 230 140 air
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 10 230 141 air
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 10 230 139 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['[{"text":"F","color":"green"},{"text":"A","color":"#2fee2f"},{"text":"C","color":"#1fde1f"},{"text":"I","color":"#0fce0f"},{"text":"L","color":"dark_green"}]','{"text": "Los caidos","color": "gray","bold": false}','{"text": "resucitan cada","color": "gray","bold": false}','{"text": "10 segundos","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/carteles/facil"}}']}}
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 10 230 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['[{"text":"N","color":"yellow"},{"text":"O","color":"#f6eb3c"},{"text":"R","color":"#efd93a"},{"text":"M","color":"#e7c738"},{"text":"A","color":"#e0b536"},{"text":"L","color":"gold"}]','{"text": "Los caidos","color": "gray","bold": false}','{"text": "resucitan por","color": "gray","bold": false}','{"text": "tumbas y ayuda","color": "gray","bold": false,"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/carteles/normal"}}']}}
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 10 230 141 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['[{"text":"D","color":"red"},{"text":"I","color":"#f33434"},{"text":"F","color":"#e82a2a"},{"text":"I","color":"#de1f1f"},{"text":"C","color":"#d31515"},{"text":"I","color":"#c80a0a"},{"text":"L","color":"dark_red"}]','{"text": "Los caidos","color": "gray","bold": false}','{"text": "se convierten","color": "gray","bold": false}','{"text": "en zombis","color": "gray","bold": false}']}}
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 9 230 139 light_gray_concrete
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 9 230 140 light_gray_concrete
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run setblock 9 230 141 lime_concrete
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run playsound ui.button.click master @a ~ ~ ~ .3
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run tag @a remove survival-normal
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run tag @a add survival-dificil
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run tag @a remove survival-facil
execute unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run data merge storage supervivencia-zombis {Dificultad:"dificil"}