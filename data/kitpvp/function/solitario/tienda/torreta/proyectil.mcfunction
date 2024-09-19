particle dust_color_transition{from_color:[0.988,0.745,0.953],scale:1,to_color:[0.906,0.067,0.796]} ~ ~ ~ 0 0 0 1 10 force
scoreboard players add @s Alcance-Bala 1
execute positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] run tag @s add t-leatine
execute positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] run tag @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] add t-meatinaron
execute as @e[tag=t-meatinaron,tag=!t-atinado] at @s run damage @s 5 generic by @e[tag=t-leatine,limit=1]
execute as @e[tag=t-meatinaron,tag=!t-atinado] at @s run tag @e[tag=t-leatine] remove t-leatine
execute as @e[tag=t-meatinaron,tag=!t-atinado] at @s run tag @s add t-atinado
tag @e[tag=leatine,type=snow_golem] remove t-leatine
tag @e[tag=t-meatinaron,type=!#kitpvp:inmunes] remove t-meatinaron
tag @e[tag=t-atinado,type=!#kitpvp:inmunes] remove t-atinado
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 50.. run function kitpvp:solitario/tienda/torreta/proyectil