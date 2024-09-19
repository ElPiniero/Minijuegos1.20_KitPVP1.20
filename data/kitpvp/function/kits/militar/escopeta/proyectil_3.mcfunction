particle mycelium ^ ^ ^ 0 0 0 0 3 force
scoreboard players add @s Proyectil_3 1
execute positioned ^ ^ ^.5 unless score @s Proyectil_3 matches 50.. if block ~ ~ ~ #kitpvp:pasables run function kitpvp:kits/militar/escopeta/proyectil_3
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run particle block{block_state:"minecraft:iron_bars"} ^ ^-1 ^ .5 .5 .5 0 1 force
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run playsound block.deepslate.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute positioned ~-.1 ~-.1 ~-.1 if entity @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,dx=0] positioned ~-.7 ~-.7 ~-.7 if entity @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,dx=0] unless score @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,dx=0] INESoldado = @s INESoldado run tag @s add leatine
execute as @s[tag=leatine] positioned ~-.1 ~-.1 ~-.1 if entity @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,dx=0] positioned ~-.7 ~-.7 ~-.7 if entity @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,dx=0] unless score @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,dx=0] INESoldado = @s INESoldado run tag @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,dx=0] add e-meatinaron
execute as @e[tag=e-meatinaron,tag=!atinado] at @s run function kitpvp:kits/militar/escopeta/meatinaron