particle campfire_signal_smoke ^ ^ ^.5 0 0 0 0 1 force
scoreboard players add @s Alcance-Bala 1
execute unless block ^ ^ ^.5 #kitpvp:pasables run scoreboard players set @s Alcance-Bala 120
execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!betameado] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!betameado] run tag @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!betameado] add Maldicion
execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!betameado] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!betameado] run tag @s add leatine
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 120.. unless entity @s[tag=leatine] run function kitpvp:kits/faraon/rayo_betam