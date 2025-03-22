particle dust{color:[0.812,0.000,0.706],scale:1} ^ ^ ^.5 0 0 0 0 1 force
execute unless block ^ ^ ^ #kitpvp:pasables run scoreboard players set @s Alcance-Bala 120
execute positioned ~-.1 ~-.1 ~-.1 if entity @n[type=#zombies,tag=!inflado,dx=0] positioned ~-.7 ~-.7 ~-.7 if entity @n[type=#zombies,tag=!inflado,dx=0] as @n[type=#zombies,tag=!inflado,dx=0] run function kitpvp:kits/neon/tintas/levitado
execute positioned ~-.1 ~-.1 ~-.1 if entity @n[type=#zombies,tag=!inflado,dx=0] positioned ~-.7 ~-.7 ~-.7 if entity @n[type=#zombies,tag=!inflado,dx=0] run scoreboard players add @s Alcance-Bala 3