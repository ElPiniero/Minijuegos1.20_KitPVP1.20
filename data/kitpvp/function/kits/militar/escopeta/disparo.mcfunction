execute anchored eyes run kill @n[type=arrow,sort=nearest,limit=1]

scoreboard players remove @s Disparo-Escopeta 1
stopsound @a[tag=!sesion_no_iniciada] player item.crossbow.shoot
playsound item.trident.return master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
playsound item.firecharge.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
playsound entity.firework_rocket.blast master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 1
playsound entity.firework_rocket.blast master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 0

tag @s remove Cartucho
scoreboard players reset @s Crossbow
execute anchored eyes positioned ^ ^ ^.8 run particle small_flame ^ ^ ^.1 0 0 0 .1 50 force

data merge storage flecha {Datos:{rx:0f,ry:0f,mx:0d,my:0d,mz:0d,uuid:[I;0,0,0,0],shot:1b,owner:1b}}
data modify storage flecha Datos.rx set from entity @s Rotation.[0]
data modify storage flecha Datos.ry set from entity @s Rotation.[1]
data modify storage flecha Datos.uuid set from entity @s UUID

execute anchored feet rotated ~ ~-2 run function kitpvp:kits/militar/escopeta/motion
execute anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos

execute anchored feet rotated ~2 ~-1 run function kitpvp:kits/militar/escopeta/motion
execute anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos

execute anchored feet rotated ~-2 ~-1 run function kitpvp:kits/militar/escopeta/motion
execute anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos

execute anchored feet rotated ~ ~2 run function kitpvp:kits/militar/escopeta/motion
execute anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos

execute anchored feet rotated ~2 ~1 run function kitpvp:kits/militar/escopeta/motion
execute anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos

execute anchored feet rotated ~-2 ~1 run function kitpvp:kits/militar/escopeta/motion
execute anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos

#execute anchored feet rotated ~ ~-2 run function kitpvp:kits/militar/escopeta/motion
#execute unless score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga-0 with storage flecha Datos
#
#execute anchored feet rotated ~2 ~-1 run function kitpvp:kits/militar/escopeta/motion
#execute unless score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga-0 with storage flecha Datos
#
#execute anchored feet rotated ~-2 ~-1 run function kitpvp:kits/militar/escopeta/motion
#execute unless score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga-0 with storage flecha Datos
#
#execute anchored feet rotated ~ ~2 run function kitpvp:kits/militar/escopeta/motion
#execute unless score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga-0 with storage flecha Datos
#
#execute anchored feet rotated ~2 ~1 run function kitpvp:kits/militar/escopeta/motion
#execute unless score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga-0 with storage flecha Datos
#
#execute anchored feet rotated ~-2 ~1 run function kitpvp:kits/militar/escopeta/motion
#execute unless score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 anchored eyes run function kitpvp:kits/militar/escopeta/carga-0 with storage flecha Datos

item replace entity @s weapon.mainhand with crossbow[unbreakable={},enchantments={quick_charge:4},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}']
execute unless score @s Disparo-Escopeta matches ..0 run scoreboard players add @s Escopeta-cooldown 1