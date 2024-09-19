scoreboard players add @e[type=item,nbt=!{Item:{id:"minecraft:diamond"}},nbt=!{Item:{id:"minecraft:light_blue_concrete"}}] Limpieza 1
execute as @e[type=item,scores={Limpieza=1}] run data merge entity @s {CustomName:'[{"text":"0:05","color":"green"}]',CustomNameVisible:1b}
execute as @e[type=item,scores={Limpieza=1}] at @s run playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.3 2
execute as @e[type=item,scores={Limpieza=2}] run data merge entity @s {CustomName:'[{"text":"0:04","color":"yellow"}]',CustomNameVisible:1b}
execute as @e[type=item,scores={Limpieza=2}] at @s run playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.3 2
execute as @e[type=item,scores={Limpieza=3}] run data merge entity @s {CustomName:'[{"text":"0:03","color":"yellow"}]',CustomNameVisible:1b}
execute as @e[type=item,scores={Limpieza=3}] at @s run playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.3 2
execute as @e[type=item,scores={Limpieza=4}] run data merge entity @s {CustomName:'[{"text":"0:02","color":"gold"}]',CustomNameVisible:1b}
execute as @e[type=item,scores={Limpieza=4}] at @s run playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.3 2
execute as @e[type=item,scores={Limpieza=5}] run data merge entity @s {CustomName:'[{"text":"0:01","color":"red"}]',CustomNameVisible:1b}
execute as @e[type=item,scores={Limpieza=5}] at @s run playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.3 2
execute as @e[type=item,scores={Limpieza=6}] at @s run playsound ui.toast.out master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.3 0
execute as @e[type=item,scores={Limpieza=6}] run kill @s
schedule function kitpvp:cuerpo_del_juego/limpieza_items 1s