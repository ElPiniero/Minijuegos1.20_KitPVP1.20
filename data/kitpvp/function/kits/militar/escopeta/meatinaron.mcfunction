execute store result score @s HP run data get entity @s Health 1000
damage @s 3 generic by @p[tag=leatine]
execute store result score @s HP run data get entity @s Health 1000
#tellraw ElPiniero [{"text": "- ","color": "green"},{"score":{"objective":"HP","name":"@s"},"color": "green"}]
execute if score @s HP matches ..0 run tag @s add yasemurio
execute as @s[tag=yasemurio,type=player] if entity @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@a[tag=!sesion_no_iniciada,tag=leatine,limit=1]"}],"color": "gray","bold": false},{"text":" [Escopeta] ","color": "dark_purple","bold":true},{"text":"","extra":[{"selector":"@s"}],"color": "gray","bold":false}]
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] run playsound block.note_block.hat master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 0
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound block.note_block.pling master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 2
execute at @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] if entity @a[tag=!sesion_no_iniciada,tag=yasemurio,limit=1] run playsound entity.turtle.egg_break master @a[tag=!sesion_no_iniciada,tag=leatine,limit=1] ~ ~ ~ 1 1.6
tag @e[type=!#kitpvp:inmunes,tag=leatine] remove leatine
tag @e[type=!#kitpvp:inmunes,tag=yasemurio] remove yasemurio
tag @e[type=!#kitpvp:inmunes,tag=e-meatinaron] remove e-meatinaron
tag @e[type=!#kitpvp:inmunes,tag=atinado] remove atinado