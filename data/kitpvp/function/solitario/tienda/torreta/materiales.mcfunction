execute as @s[tag=Torreta,tag=!activado] run function kitpvp:solitario/tienda/torreta/activacion

execute if entity @s[nbt={HurtTime:10s}] run particle block{block_state:"minecraft:stone_brick_wall"} ~ ~1 ~ .2 .5 .2 1 30 force
execute if entity @s[nbt={HurtTime:10s}] run playsound entity.zombie.attack_iron_door master @a[tag=!sesion_no_iniciada] ~ ~ ~ 0.6 1

tag @s add en_accion
scoreboard players operation #ine-torreta INESoldado = @s INESoldado
execute on target run tag @n[type=snow_golem,tag=en_accion] remove pasivo
tag @s[tag=!pasivo] add pasivo

execute as @s[tag=pasivo] rotated as @s as @e[type=item_display,distance=..3,tag=Cabeza_Torreta] if score @s INESoldado = #ine-torreta INESoldado run rotate @s ~ ~
execute as @s[tag=pasivo] rotated as @s as @e[type=item_display,distance=..3,tag=Cuerpo_Torreta] if score @s INESoldado = #ine-torreta INESoldado run rotate @s ~ ~
execute on target if entity @s as @n[type=snow_golem,tag=en_accion] run function kitpvp:solitario/tienda/torreta/deteccion

tag @s remove en_accion