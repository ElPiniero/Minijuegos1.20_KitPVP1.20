particle block{block_state:"minecraft:cake"} ~ ~-.75 ~ .4 .2 .4 1 5 force
tag @s add yachoco
execute at @s on vehicle run tag @e[type=block_display,sort=nearest,limit=1,tag=Pastel,tag=disparado] remove yachoco
scoreboard players operation #ine-pastel INESoldado = @s[tag=yachoco] INESoldado
execute as @s[tag=yachoco] as @a[tag=!sesion_no_iniciada] if score @s INESoldado = #ine-pastel INESoldado run function kitpvp:kits/neon/pastel/yachoco