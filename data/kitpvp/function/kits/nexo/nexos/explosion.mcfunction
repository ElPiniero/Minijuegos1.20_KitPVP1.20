particle explosion_emitter ~ ~1.4 ~ .3 .3 .3 1 5 force
particle flash ~ ~1.4 ~ 1 1 1 1 100 force
particle poof ~ ~ ~ .1 .1 .1 .5 500 force
playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10 0.7
tag @s add leatine
execute as @e[type=!#kitpvp:inmunes,distance=..1] run damage @s 40 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..2] run damage @s 35 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..3] run damage @s 32 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..4] run damage @s 30 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..5] run damage @s 28 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..6] run damage @s 26 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..7] run damage @s 22 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..8] run damage @s 18 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..9] run damage @s 14 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..10] run damage @s 10 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..11] run damage @s 4 player_explosion by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..12] run damage @s 1 player_explosion by @a[tag=leatine,limit=1]
tag @s remove leatine
kill @e[type=block_display,tag=nexo_prendido,sort=nearest,limit=1,distance=...9]
kill @e[type=interaction,tag=Nexo,sort=nearest,limit=1,distance=...9]