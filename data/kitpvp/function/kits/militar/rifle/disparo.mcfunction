scoreboard players remove @s Municion_Rifle 1
playsound item.firecharge.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
playsound entity.firework_rocket.blast master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
execute anchored eyes positioned ^ ^ ^.8 run particle small_flame ^ ^ ^ .01 .01 .01 .1 5 force

data merge storage flecha {Datos:{rx:0f,ry:0f,mx:0d,my:0d,mz:0d,uuid:[I;0,0,0,0],shot:1b,owner:1b}}
data modify storage flecha Datos.rx set from entity @s Rotation.[0]
data modify storage flecha Datos.ry set from entity @s Rotation.[1]
data modify storage flecha Datos.uuid set from entity @s UUID
function kitpvp:kits/militar/rifle/motion
function kitpvp:kits/militar/rifle/carga with storage flecha Datos
#execute unless score #motion_x_2 Conteo matches 0 run function kitpvp:kits/militar/rifle/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 run function kitpvp:kits/militar/rifle/carga-0 with storage flecha Datos