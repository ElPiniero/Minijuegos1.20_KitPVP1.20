fill ~ ~ ~ ~ ~ ~ air replace snow
execute as @s[tag=!desactivado] run playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 1.2
execute as @s[tag=!desactivado] run playsound item.shield.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 2
execute as @s[tag=!desactivado] run playsound item.shield.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 1
execute as @s[tag=!desactivado] run playsound item.shield.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 4 0
execute as @s[tag=!desactivado] run particle poof ~ ~1 ~ 0 0 0 .7 100 force
execute as @s[tag=!desactivado] run particle flash ~ ~1 ~ 0 0 0 1 2 force
execute as @s[tag=!desactivado] run particle flash ~ ~1 ~ 0 0 0 1 2 force
execute as @s[tag=!desactivado] positioned ~ ~1.75 ~ if score @e[tag=Cabeza_Torreta,limit=1,distance=...9,type=item_display] INESoldado = @s INESoldado run tp @e[tag=Cabeza_Torreta,limit=1,type=item_display,distance=...9] ~ ~-1.25 ~
execute as @s[tag=!desactivado] positioned ~ ~.8 ~ if score @e[tag=Cuerpo_Torreta,limit=1,distance=...9,type=item_display] INESoldado = @s INESoldado run tp @e[tag=Cuerpo_Torreta,limit=1,type=item_display,distance=...9] ~ ~-.3 ~
execute as @s[tag=!desactivado] positioned ~ ~.5 ~ if score @e[tag=Cuerpo_Torreta,limit=1,distance=...9,type=item_display] INESoldado = @s INESoldado run data modify entity @e[tag=Cuerpo_Torreta,limit=1,type=item_display,distance=...9] Rotation.[1] set value -30f
execute as @s[tag=!desactivado] positioned ~ ~.5 ~ if score @e[tag=Cabeza_Torreta,limit=1,distance=...9,type=item_display] INESoldado = @s INESoldado run data modify entity @e[tag=Cabeza_Torreta,limit=1,type=item_display,distance=...9] Rotation.[1] set value 20f
execute as @s[tag=!desactivado] run scoreboard players add @s Desactivando 1
execute as @s[tag=!desactivado] run tag @s add desactivado
execute as @s[scores={Desactivando=1..}] run scoreboard players add @s Desactivando 1
execute as @s[scores={Desactivando=1..}] run particle large_smoke ~ ~ ~ 0 .3 0 .05 1 force
execute as @s[scores={Desactivando=1..}] run particle flame ~ ~ ~ 0 .3 0 .1 1 force
execute as @s[scores={Desactivando=20}] run playsound block.fire.ambient master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute as @s[scores={Desactivando=60}] run playsound block.fire.ambient master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute as @s[scores={Desactivando=80..}] positioned ~ ~.5 ~ if score @e[tag=Cabeza_Torreta,limit=1,distance=...9,type=item_display] INESoldado = @s INESoldado run kill @e[tag=Cabeza_Torreta,limit=1,type=item_display,distance=...9]
execute as @s[scores={Desactivando=80..}] positioned ~ ~.5 ~ if score @e[tag=Cuerpo_Torreta,limit=1,distance=...9,type=item_display] INESoldado = @s INESoldado run kill @e[tag=Cuerpo_Torreta,limit=1,type=item_display,distance=...9]
execute as @s[scores={Desactivando=80..}] positioned ~ ~.5 ~ if score @e[tag=Pies_Torreta,limit=1,distance=...9,type=item_display] INESoldado = @s INESoldado run kill @e[tag=Pies_Torreta,limit=1,type=item_display,distance=...9]
execute as @s[scores={Desactivando=80..}] run kill @s