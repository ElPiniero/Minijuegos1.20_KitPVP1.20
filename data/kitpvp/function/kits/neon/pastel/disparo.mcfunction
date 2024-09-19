execute as @e[type=block_display,tag=Pastel,tag=sin_disparar] if score @s INESoldado = #ine-pastel INESoldado run tag @s add yamerodisparado
execute as @e[type=block_display,tag=Pastel,tag=sin_disparar,tag=yamerodisparado] if score @s INESoldado = #ine-pastel INESoldado run tag @s remove sin_disparar
execute as @e[type=block_display,tag=Pastel,tag=yamerodisparado] if score @s INESoldado = #ine-pastel INESoldado run ride @s mount @e[type=#arrows,sort=nearest,limit=1,distance=..2]
execute positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=1,distance=..2] on passengers run tag @s remove yamerodisparado
execute positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=1,distance=..2] on passengers run tag @s add disparado

clear @s cake 1
scoreboard players reset @s Arco