execute anchored eyes positioned ^ ^ ^1 unless block ~ ~ ~ #kitpvp:pasables run tag @s add yachoco
particle dust_color_transition{from_color:[1.000,0.902,0.000],scale:3,to_color:[1.000,1.000,1.000]} ~ ~ ~ .1 .1 .1 1 5 force
particle flame ~ ~ ~ .1 .1 .1 0 5 force
scoreboard players add @s Alcance-Bala 1
execute if entity @e[distance=..2,sort=nearest,limit=1,type=!#kitpvp:inmunes] unless score @e[distance=..2,sort=nearest,limit=1,type=!#kitpvp:inmunes] INESoldado = @s INESoldado run tag @s add yachoco
execute as @a[tag=!sesion_no_iniciada] if score @s INESoldado = @e[tag=M-Bala,limit=1,tag=yachoco] INESoldado run tag @s add leatine
execute as @s[tag=yachoco] run tag @e[distance=..10,type=!#kitpvp:inmunes] add m-meatinaron
execute as @e[distance=..10,tag=m-meatinaron,tag=!atinado,type=!#kitpvp:inmunes] at @s run function kitpvp:kits/militar/lanzamisiles/meatinaron
execute as @s[tag=yachoco] run particle explosion_emitter ~ ~1.4 ~ .3 .3 .3 1 5 force
execute as @s[tag=yachoco] run particle flash ~ ~1.4 ~ 1 1 1 1 100 force
execute as @s[tag=yachoco] run particle poof ~ ~ ~ .1 .1 .1 .5 500 force
execute as @s[tag=yachoco] run playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 8 1
kill @s[tag=yachoco]
kill @s[scores={Alcance-Bala=200..}]
execute positioned ^ ^ ^ run tp @s ^ ^ ^2