execute as @e[type=firework_rocket] at @s on origin if entity @s[scores={Crossbow=1..}] run kill @e[type=firework_rocket,sort=nearest,limit=1]
stopsound @a[tag=!sesion_no_iniciada] player item.crossbow.shoot
playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
tag @s remove Misil
scoreboard players reset @s Crossbow
execute positioned ^ ^ ^-.3 run particle poof ^ ^1.4 ^-1 .1 .1 .1 .1 50 force
kill @e[type=firework_rocket,distance=..3]
execute rotated as @s positioned ^ ^ ^.8 run summon interaction ~ ~1.54 ~ {Tags:["M-Bala"],width:.5f,height:.5f}
scoreboard players operation @e[tag=M-Bala,distance=..2,type=interaction] INESoldado = @s INESoldado
execute rotated as @s positioned ^ ^ ^.8 run tp @e[tag=M-Bala,distance=..2] ~ ~1.54 ~ ~ ~