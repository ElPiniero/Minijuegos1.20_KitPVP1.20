particle mycelium ~ ~ ~ 0 0 0 0 10 force
scoreboard players add @s Alcance-Bala 1
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 200.. if block ~ ~ ~ #kitpvp:pasables run function kitpvp:kits/militar/rifle/proyectil
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run particle block{block_state:"minecraft:iron_bars"} ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run playsound block.deepslate.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!r-meatinaron] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!r-meatinaron] unless score @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!r-meatinaron] INESoldado = @s INESoldado run tag @s add leatine
execute positioned ~-.1 ~-.1 ~-.1 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!r-meatinaron] positioned ~-.7 ~-.7 ~-.7 if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!r-meatinaron] unless score @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!r-meatinaron] INESoldado = @s INESoldado run tag @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,dx=0,tag=!r-meatinaron] add r-meatinaron
execute as @e[tag=r-meatinaron,tag=!atinado] at @s run function kitpvp:kits/militar/rifle/meatinaron