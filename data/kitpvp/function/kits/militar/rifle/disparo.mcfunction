scoreboard players reset @s Alcance-Bala
scoreboard players remove @s Municion_Rifle 1
execute unless score @s Municion_Rifle matches ..0 run item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
playsound item.firecharge.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2
execute anchored eyes positioned ^ ^ ^.8 run particle small_flame ^ ^ ^ .01 .01 .01 .1 5 force
execute at @s anchored eyes run function kitpvp:kits/militar/rifle/proyectil
tag @e[type=!#kitpvp:inmunes,tag=r-meatinaron] remove r-meatinaron
tag @e[type=!#kitpvp:inmunes,tag=atinado] remove atinado