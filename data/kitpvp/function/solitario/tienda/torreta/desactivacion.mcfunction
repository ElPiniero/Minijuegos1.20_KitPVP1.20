fill ~ ~ ~ ~ ~ ~ air replace snow
scoreboard players operation #ine-torreta INESoldado = @s INESoldado
execute as @s[tag=!desactivado] as @e[type=item_display,tag=Cabeza_Torreta,distance=..3] if score @s INESoldado = #ine-torreta INESoldado run ride @s mount @n[type=interaction,tag=Cerebro_Torreta]
execute as @s[tag=!desactivado] as @e[type=item_display,tag=Cuerpo_Torreta,distance=..3] if score @s INESoldado = #ine-torreta INESoldado run ride @s mount @n[type=interaction,tag=Cerebro_Torreta]
execute as @s[tag=!desactivado] as @e[type=item_display,tag=Pies_Torreta,distance=..3] if score @s INESoldado = #ine-torreta INESoldado run ride @s mount @n[type=interaction,tag=Cerebro_Torreta]
execute as @s[tag=!desactivado] run playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 1.2
execute as @s[tag=!desactivado] run playsound item.shield.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 2
execute as @s[tag=!desactivado] run playsound item.shield.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 1
execute as @s[tag=!desactivado] run playsound item.shield.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 0
execute as @s[tag=!desactivado] run particle poof ~ ~1 ~ 0 0 0 .7 100 force
execute as @s[tag=!desactivado] run particle flash ~ ~1 ~ 0 0 0 1 2 force
execute as @s[tag=!desactivado] run particle flash ~ ~1 ~ 0 0 0 1 2 force
execute as @s[tag=!desactivado] on passengers as @s[tag=Cabeza_Torreta] run data modify entity @s Rotation.[1] set value -30f
execute as @s[tag=!desactivado] on passengers as @s[tag=Cuerpo_Torreta] run data modify entity @s Rotation.[1] set value 20f
execute as @s[tag=!desactivado] run scoreboard players add @s Desactivando 1
execute as @s[tag=!desactivado] run tag @s add desactivado

execute as @s[scores={Desactivando=1..}] run scoreboard players add @s Desactivando 1
execute as @s[scores={Desactivando=1..}] run particle large_smoke ~ ~ ~ 0 .3 0 .05 1 force
execute as @s[scores={Desactivando=1..}] run particle flame ~ ~ ~ 0 .3 0 .1 1 force
execute as @s[scores={Desactivando=20}] run playsound block.fire.ambient master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute as @s[scores={Desactivando=60}] run playsound block.fire.ambient master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute as @s[scores={Desactivando=80..}] on passengers run kill @s
execute as @s[scores={Desactivando=80..}] run kill @s