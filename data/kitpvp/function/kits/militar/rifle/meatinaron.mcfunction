execute store result score @s HP run data get entity @s Health 1000
damage @s 5 generic by @a[tag=!sesion_no_iniciada,tag=leatine,limit=1]
execute store result score @s HP run data get entity @s Health 1000
execute if score @s HP matches ..0 run tag @s add yasemurio
execute as @s[tag=yasemurio,type=player] if entity @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@a[tag=!sesion_no_iniciada,tag=leatine,limit=1]"}],"color": "gray","bold": false},{"text":" [Rifle de Asalto] ","color": "green","bold":true},{"text":"","extra":[{"selector":"@s"}],"color": "gray","bold":false}]
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run playsound block.note_block.hat master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 0
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound block.note_block.pling master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 2
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound entity.turtle.egg_break master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 1.6
tag @e[tag=yasemurio,limit=1] remove yasemurio
tag @a remove leatine
tag @s add atinado