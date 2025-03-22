execute as @a[tag=!sesion_no_iniciada] if score @s INESoldado = #ine-misil INESoldado run tag @s add leatine

execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=M-Bala,tag=yachoco,distance=..2,type=interaction] run damage @s 35 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=M-Bala,tag=yachoco,distance=..4,type=interaction] run damage @s 30 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=M-Bala,tag=yachoco,distance=..6,type=interaction] run damage @s 25 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=M-Bala,tag=yachoco,distance=..8,type=interaction] run damage @s 15 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run damage @s 10 player_explosion by @p[tag=leatine]
tag @a remove leatine

particle explosion_emitter ~ ~1.4 ~ .3 .3 .3 1 5 force
particle flash ~ ~1.4 ~ 1 1 1 1 100 force
particle poof ~ ~ ~ .1 .1 .1 .5 500 force
playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 8 1
kill @s