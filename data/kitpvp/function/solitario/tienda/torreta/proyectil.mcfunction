particle dust_color_transition{from_color:[0.988,0.745,0.953],scale:1,to_color:[0.906,0.067,0.796]} ~ ~ ~ 0 0 0 1 10 force
scoreboard players add @s Alcance-Bala 1
execute positioned ~-.1 ~-.1 ~-.1 if entity @n[type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] positioned ~-.7 ~-.7 ~-.7 if entity @n[type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] run tag @s add t-leatine
execute positioned ~-.1 ~-.1 ~-.1 if entity @n[type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] positioned ~-.7 ~-.7 ~-.7 if entity @n[type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] run tag @n[type=!#kitpvp:inmunes,dx=0,tag=!t-meatinaron,type=!player] add t-meatinaron
execute as @n[type=!#kitpvp:inmunes,tag=t-meatinaron,type=!player] run function kitpvp:solitario/tienda/torreta/dano
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 50.. run function kitpvp:solitario/tienda/torreta/proyectil