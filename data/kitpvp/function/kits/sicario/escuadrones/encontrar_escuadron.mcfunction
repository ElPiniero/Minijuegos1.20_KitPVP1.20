scoreboard players operation #ine-escuadron INESoldado = @s INESoldado
tag @s add yamemori
execute as @e[type=skeleton,tag=Tropa_Escuadron] if score @s INESoldado = #ine-escuadron INESoldado run function kitpvp:cuerpo_del_juego/tag_muerte
tag @s remove yamemori
