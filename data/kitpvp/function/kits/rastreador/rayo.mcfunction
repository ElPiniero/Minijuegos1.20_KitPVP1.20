particle happy_villager ~ ~ ~ 0 0 0 1 10 force @s
scoreboard players add @s Alcance-Bala 1
execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @r[tag=!rastreando,dx=0,gamemode=adventure] positioned ~-.7 ~-.7 ~-.7 if entity @r[tag=!rastreando,dx=0,gamemode=adventure] run tag @r[tag=!rastreando,dx=0,gamemode=adventure] add rastreado
execute positioned ^ ^ ^.5 positioned ~-.1 ~-.1 ~-.1 if entity @r[tag=!rastreando,dx=0,gamemode=adventure,tag=rastreado] positioned ~-.7 ~-.7 ~-.7 if entity @r[tag=!rastreando,dx=0,gamemode=adventure,tag=rastreado] run tag @s add yarastreo
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 200.. unless entity @s[tag=yarastreo] run function kitpvp:kits/rastreador/rayo