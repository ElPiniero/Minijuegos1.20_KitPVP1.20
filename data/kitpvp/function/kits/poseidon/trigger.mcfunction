execute unless score @e[type=trident,sort=nearest,limit=1,distance=..2] INESoldado = @s INESoldado run scoreboard players operation @e[type=trident,sort=nearest,limit=1,distance=..2] INESoldado = @s INESoldado
tag @s[nbt={Inventory:[{count:1,Slot:-106b,components:{},id:"minecraft:trident"}]},tag=!tridente_viaje] add tridente_viaje
execute as @s[scores={Tridente_Viaje=1},tag=tridente_viaje] run function kitpvp:kits/poseidon/materiales
scoreboard players reset @s[scores={Tridente_Viaje=1..}] Tridente_Viaje
execute as @e[type=trident,tag=tridente_viaje,nbt={inGround:1b}] on passengers at @s if score @s INESoldado = @e[type=trident,sort=nearest,limit=1,distance=..2,tag=tridente_viaje] INESoldado run ride @s dismount
tag @s[nbt=!{Inventory:[{count:1,Slot:-106b,components:{},id:"minecraft:trident"}]},tag=tridente_viaje] remove tridente_viaje