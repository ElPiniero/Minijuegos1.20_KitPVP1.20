execute as @s[tag=Torreta,tag=!activado] run function kitpvp:solitario/tienda/torreta/activacion
execute if entity @s[nbt={HurtTime:10s}] run particle block{block_state:"minecraft:stone_brick_wall"} ~ ~1 ~ .2 .5 .2 1 30 force
execute if entity @s[nbt={HurtTime:10s}] run playsound entity.zombie.attack_iron_door master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.6 1
execute on target run tag @e[type=snow_golem,limit=1,distance=...9,sort=nearest] remove pasivo
tag @s[tag=!pasivo] add pasivo
execute as @s[tag=pasivo] positioned ~ ~1.75 ~ rotated as @s anchored eyes rotated as @s if score @s INESoldado = @e[tag=Cuerpo_Torreta,limit=1,distance=..1,type=item_display] INESoldado run tp @e[tag=Cabeza_Torreta,limit=1,distance=..1,type=item_display] ~ ~ ~ ~ ~
execute as @s[tag=pasivo] positioned ~ ~.8 ~ rotated as @s if score @s INESoldado = @e[tag=Cuerpo_Torreta,limit=1,distance=..1,type=item_display] INESoldado run tp @e[tag=Cuerpo_Torreta,limit=1,distance=..1,type=item_display] ~ ~ ~ ~ ~
execute on target if entity @s as @e[type=snow_golem,limit=1,distance=...9,sort=nearest] run function kitpvp:solitario/tienda/torreta/deteccion