execute as @e[type=arrow] at @s on origin if entity @s[scores={Crossbow=1..}] run kill @e[type=arrow,sort=nearest,limit=1]
scoreboard players reset @s Proyectil_1
scoreboard players reset @s Proyectil_2
scoreboard players reset @s Proyectil_3
scoreboard players reset @s Proyectil_4
scoreboard players reset @s Proyectil_5
scoreboard players reset @s Proyectil_6
scoreboard players remove @s Disparo-Escopeta 1
stopsound @a[tag=!sesion_no_iniciada] player item.crossbow.shoot
playsound item.trident.return master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
playsound item.firecharge.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
tag @s remove Cartucho
scoreboard players reset @s Crossbow
execute anchored eyes positioned ^ ^ ^.8 run particle small_flame ^ ^ ^.1 0 0 0 .1 50 force
execute at @s anchored eyes rotated ~ ~-2 run function kitpvp:kits/militar/escopeta/proyectil_1
execute at @s anchored eyes rotated ~2 ~-1 run function kitpvp:kits/militar/escopeta/proyectil_2
execute at @s anchored eyes rotated ~-2 ~-1 run function kitpvp:kits/militar/escopeta/proyectil_3
execute at @s anchored eyes rotated ~ ~2 run function kitpvp:kits/militar/escopeta/proyectil_4
execute at @s anchored eyes rotated ~2 ~1 run function kitpvp:kits/militar/escopeta/proyectil_5
execute at @s anchored eyes rotated ~-2 ~1 run function kitpvp:kits/militar/escopeta/proyectil_6
item replace entity @s weapon.mainhand with crossbow[unbreakable={},enchantments={quick_charge:4},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}']
execute unless score @s Disparo-Escopeta matches ..0 run scoreboard players add @s Escopeta-cooldown 1