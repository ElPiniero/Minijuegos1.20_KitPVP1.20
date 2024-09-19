tag @s add leatine
particle explosion_emitter ~ ~1.4 ~ .3 .3 .3 1 2 force
particle flash ~ ~1.4 ~ 1 1 1 1 40 force
particle block{block_state:"minecraft:cake"} ~ ~-.75 ~ 5 5 5 1 2000 force
playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 5 1.2
playsound block.honey_block.fall master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 1
playsound block.honey_block.fall master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0
execute as @e[type=!#kitpvp:inmunes,distance=..10] run damage @s 25 player_explosion by @a[tag=leatine,limit=1]
tag @s remove leatine
execute as @e[type=block_display,tag=Pastel,tag=disparado,tag=yachoco] if score @s INESoldado = #ine-pastel INESoldado run kill @s