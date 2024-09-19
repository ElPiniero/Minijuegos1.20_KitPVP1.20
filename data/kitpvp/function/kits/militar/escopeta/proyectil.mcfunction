particle mycelium ^ ^-1 ^ 0 0 0 0 10 force
particle mycelium ^-1 ^-.5 ^ 0 0 0 0 10 force
particle mycelium ^1 ^-.5 ^ 0 0 0 0 10 force
particle mycelium ^ ^1 ^ 0 0 0 0 10 force
particle mycelium ^-1 ^.5 ^ 0 0 0 0 10 force
particle mycelium ^1 ^.5 ^ 0 0 0 0 10 force
scoreboard players add @s Alcance-Bala 1
execute positioned ^ ^ ^.5 unless score @s Alcance-Bala matches 50.. if block ~ ~ ~ #kitpvp:pasables run function kitpvp:kits/militar/escopeta/proyectil
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run particle block{block_state:"minecraft:iron_bars"} ^ ^-1 ^ .5 .5 .5 0 1 force
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run playsound block.deepslate.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run playsound block.deepslate.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute positioned ^ ^ ^.5 unless block ~ ~ ~ #kitpvp:pasables run playsound block.deepslate.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute positioned ^ ^-1 ^ if entity @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,distance=..2.25] unless score @e[sort=nearest,limit=1,type=!#kitpvp:inmunes,distance=..2.25] INESoldado = @s INESoldado run tag @s add leatine
execute as @s[tag=leatine] positioned ^ ^-1 ^ run tag @e[type=!#kitpvp:inmunes,distance=..2.25,tag=!leatine] add e-meatinaron
execute as @s[tag=leatine] positioned ^ ^-1 ^ run tag @e[type=!#kitpvp:inmunes,distance=..2,tag=!leatine] add alto-meatinaron
execute as @s[tag=leatine] positioned ^ ^-1 ^ run tag @e[type=!#kitpvp:inmunes,distance=..2.15,tag=!leatine] add medio-meatinaron
execute as @s[tag=leatine] positioned ^ ^-1 ^ run tag @e[type=!#kitpvp:inmunes,distance=..2.25,tag=!leatine] add bajo-meatinaron
execute as @e[tag=e-meatinaron,tag=!atinado] at @s run function kitpvp:kits/militar/escopeta/meatinaron