particle campfire_signal_smoke ^ ^ ^.5 0 0 0 0 1 force
scoreboard players add @s Alcance-Bala 1
execute unless block ^ ^ ^.5 #kitpvp:pasables run scoreboard players set @s Alcance-Bala 120
#execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @n[type=#zombies,dx=0,tag=!Maldicion] positioned ~-.7 ~-.7 ~-.7 if entity @n[type=#zombies,dx=0,tag=!Maldicion] run scoreboard players add @s Alcance-Bala 5
execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @n[type=#zombies,dx=0,tag=!Maldicion] positioned ~-.7 ~-.7 ~-.7 if entity @n[type=#zombies,dx=0,tag=!Maldicion] as @n[type=#zombies,dx=0,tag=!Maldicion] run function kitpvp:kits/faraon/betam-z
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 120.. run function kitpvp:kits/faraon/rayo_betam_z