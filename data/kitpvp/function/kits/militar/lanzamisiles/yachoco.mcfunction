execute as @a[tag=!sesion_no_iniciada] if score @s INESoldado = #ine-misil INESoldado run tag @s add leatine

execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute store result score @s HP run data get entity @s Health 1000
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute if entity @e[tag=M-Bala,tag=yachoco,distance=..4,type=interaction] run damage @s 15 generic by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute if entity @e[tag=M-Bala,tag=yachoco,distance=..6,type=interaction] run damage @s 12.5 generic by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute if entity @e[tag=M-Bala,tag=yachoco,distance=..8,type=interaction] run damage @s 7.5 generic by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run damage @s 5 generic by @p[tag=leatine]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute store result score @s HP run data get entity @s Health 1000
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute if score @s HP matches ..0 run tag @s[type=player] add yasemurio

execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute as @s[tag=yasemurio,type=player] if entity @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@a[tag=!sesion_no_iniciada,tag=leatine,limit=1]"}],"color": "gray","bold": false},{"text":" [Lanzamisiles] ","color": "gold","bold":true},{"text":"","extra":[{"selector":"@s"}],"color": "gray","bold":false}]
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run playsound block.note_block.hat master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 0
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound block.note_block.pling master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 2
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound entity.turtle.egg_break master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 1.6

execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run tag @a remove leatine
execute as @e[distance=..10,type=!#kitpvp:inmunes] at @s run tag @a remove yasemurio

particle explosion_emitter ~ ~1.4 ~ .3 .3 .3 1 5 force
particle flash ~ ~1.4 ~ 1 1 1 1 100 force
particle poof ~ ~ ~ .1 .1 .1 .5 500 force
playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 8 1
kill @s