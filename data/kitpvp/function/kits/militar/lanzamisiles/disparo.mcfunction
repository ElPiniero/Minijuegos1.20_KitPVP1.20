execute as @e[type=firework_rocket] at @s on origin if entity @s[scores={Crossbow=1..},tag=Militar] run kill @n[type=firework_rocket]
stopsound @a[tag=!sesion_no_iniciada] player item.crossbow.shoot
playsound entity.generic.explode master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2

scoreboard players reset @s Crossbow
execute positioned ^ ^ ^-.3 run particle poof ^ ^1.4 ^-1 .1 .1 .1 .1 50 force

data merge storage flecha {Datos:{rx:0f,ry:0f,mx:0d,my:0d,mz:0d,uuid:[I;0,0,0,0],shot:1b,owner:1b}}
data modify storage flecha Datos.rx set from entity @s Rotation.[0]
data modify storage flecha Datos.ry set from entity @s Rotation.[1]
data modify storage flecha Datos.uuid set from entity @s UUID
function kitpvp:kits/militar/lanzamisiles/motion
function kitpvp:kits/militar/lanzamisiles/carga with storage flecha Datos

#execute unless score #motion_x_2 Conteo matches 0 run function kitpvp:kits/militar/lanzamisiles/carga with storage flecha Datos
#execute if score #motion_x_2 Conteo matches 0 run function kitpvp:kits/militar/lanzamisiles/carga-0 with storage flecha Datos

function kitpvp:kits/militar/lanzamisiles/carga with storage flecha Datos
execute anchored eyes run summon item_display ^ ^ ^ {Tags:["Misil","nuevo"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[.7071068f,0f,0f,.7071068f],translation:[0f,-.15f,.3f],scale:[1f,1f,3f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-47574403,-234929993,-1481961091,226614464],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzE1YmJkYTEyZTFiODMyYTZhNmFmODVkODQzOTE1MmQ5MTU3Y2UxMDRlNmE3ZjdiMzZhZWFjY2M4NjM1NDQifX19"}]}}}}

rotate @n[type=item_display,tag=Misil,tag=nuevo] ~ ~
ride @n[type=item_display,tag=Misil,tag=nuevo] mount @n[type=ender_pearl,tag=Misil_motion,tag=nuevo]
scoreboard players operation @n[type=item_display,tag=Misil,tag=nuevo] INESoldado = @s INESoldado
tag @n[type=item_display,tag=Misil,tag=nuevo] remove nuevo
tag @n[type=ender_pearl,tag=Misil_motion,tag=nuevo] remove nuevo