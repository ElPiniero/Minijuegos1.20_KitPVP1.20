scoreboard players operation #ine-escuadron INESoldado = @s INESoldado
execute as @e[type=skeleton,tag=Tropa_Escuadron] if score @s INESoldado = #ine-escuadron INESoldado run tag @s add atacando
execute as @e[type=skeleton,tag=Tropa_Escuadron,tag=atacando] run damage @s 1 generic by @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,distance=..1]
tag @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,distance=..1] add ya_me_atacaron