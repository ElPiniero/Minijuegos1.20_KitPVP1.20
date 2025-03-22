execute if score @s Municion_Rifle matches ..0 run return run scoreboard players reset @s militar-descargar
summon item ~ ~ ~ {Item:{id:"minecraft:arrow",count:1,components:{"minecraft:custom_name":'{"color":"white","italic":false,"text":"Bala de Rifle"}'}},Tags:["balita"]}
execute store result entity @n[type=item,tag=balita] Item.count byte 1 run scoreboard players get @s Municion_Rifle
scoreboard players set @s Municion_Rifle 0
item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}']
tag @n[type=item,tag=balita] remove balita
scoreboard players reset @s militar-descargar