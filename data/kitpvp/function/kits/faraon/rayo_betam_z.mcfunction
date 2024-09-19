particle campfire_signal_smoke ^ ^ ^.5 0 0 0 0 1 force
scoreboard players add @s Alcance-Bala 1
execute unless block ^ ^ ^.5 #kitpvp:pasables run scoreboard players set @s Alcance-Bala 120
execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=#zombies,dx=0,tag=!Maldicion] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=#zombies,dx=0,tag=!Maldicion] run scoreboard players add @s Alcance-Bala 10
execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=#zombies,dx=0,tag=!Maldicion] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=#zombies,dx=0,tag=!Maldicion] run tag @e[sort=nearest,limit=1,type=#zombies,dx=0,tag=!Maldicion] add Maldicion
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 120.. run function kitpvp:kits/faraon/rayo_betam_z