particle dust{color:[0.231,0.424,0.941],scale:1} ^ ^ ^ 0 0 0 0 1 force
execute unless block ^ ^ ^ #kitpvp:pasables run tag @s add yaatraje
execute positioned ~-.1 ~-.1 ~-.1 if entity @p[tag=!catalejao,dx=0,gamemode=adventure] positioned ~-.7 ~-.7 ~-.7 if entity @p[tag=!catalejao,dx=0,gamemode=adventure] run scoreboard players operation @p[tag=!catalejao,dx=0,gamemode=adventure] Atraido = @s INESoldado
execute positioned ~-.1 ~-.1 ~-.1 if entity @p[tag=!catalejao,dx=0,gamemode=adventure] positioned ~-.7 ~-.7 ~-.7 if entity @p[tag=!catalejao,dx=0,gamemode=adventure] as @p[tag=!catalejao,dx=0,gamemode=adventure] run function kitpvp:kits/neon/tintas/atraido
execute positioned ~-.1 ~-.1 ~-.1 if entity @p[tag=!catalejao,dx=0,gamemode=adventure] positioned ~-.7 ~-.7 ~-.7 if entity @p[tag=!catalejao,dx=0,gamemode=adventure] run tag @s add yaatraje