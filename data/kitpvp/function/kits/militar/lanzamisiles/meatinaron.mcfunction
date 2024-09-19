execute store result score @s HP run data get entity @s Health 1000
execute if entity @e[tag=M-Bala,tag=yachoco,distance=..4,type=interaction] run damage @s 15 generic by @p[tag=leatine]
execute if entity @e[tag=M-Bala,tag=yachoco,distance=..6,type=interaction] run damage @s 12.5 generic by @p[tag=leatine]
execute if entity @e[tag=M-Bala,tag=yachoco,distance=..8,type=interaction] run damage @s 7.5 generic by @p[tag=leatine]
execute if entity @e[tag=M-Bala,tag=yachoco,distance=..10,type=interaction] run damage @s 5 generic by @p[tag=leatine]
execute store result score @s HP run data get entity @s Health 1000
execute if score @s HP matches ..0 run tag @s add yasemurio
execute as @s[tag=yasemurio,type=player] if entity @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@a[tag=!sesion_no_iniciada,tag=leatine,limit=1]"}],"color": "gray","bold": false},{"text":" [Lanzamisiles] ","color": "gold","bold":true},{"text":"","extra":[{"selector":"@s"}],"color": "gray","bold":false}]
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run playsound block.note_block.hat master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 0
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound block.note_block.pling master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 2
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound entity.turtle.egg_break master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 1.6
tag @e[type=!#kitpvp:inmunes] remove atinado
tag @e[type=!#kitpvp:inmunes] remove leatine
tag @e remove m-meatinaron
tag @e remove yasemurio
tag @s add atinado