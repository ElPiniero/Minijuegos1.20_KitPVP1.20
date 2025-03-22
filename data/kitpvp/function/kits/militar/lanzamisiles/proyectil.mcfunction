particle dust_color_transition{from_color:[1.000,0.902,0.000],scale:2,to_color:[1.000,1.000,1.000]} ^ ^-.25 ^-1 .1 .1 .1 1 5 force
particle flame ^ ^-.25 ^-1 .1 .1 .1 0.2 2 force

execute on vehicle on passengers run return fail
scoreboard players operation #ine-misil INESoldado = @s INESoldado
execute as @a[tag=!sesion_no_iniciada] if score @s INESoldado = #ine-misil INESoldado run tag @s add leatine

execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=Misil,distance=..2,type=item_display] run damage @s 35 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=Misil,distance=..4,type=item_display] run damage @s 30 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=Misil,distance=..6,type=item_display] run damage @s 25 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s if entity @n[tag=Misil,distance=..8,type=item_display] run damage @s 15 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run damage @s 10 player_explosion by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @a[tag=leatine] run playsound block.note_block.hat master @a[tag=leatine] ~ ~ ~ 1 0 1
tag @a remove leatine

particle explosion_emitter ~ ~1.4 ~ .3 .3 .3 1 5 force
particle flash ~ ~1.4 ~ 1 1 1 1 100 force
particle poof ~ ~ ~ .1 .1 .1 .5 500 force
playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 8 1
kill @s