summon item ~ ~ ~ {Item:{id:"minecraft:barrier",count:1,components:{"minecraft:unbreakable":{}}},Tags:["cartucho-invalido","nuevo"]}
data modify entity @n[type=item,tag=cartucho-invalido,tag=nuevo] Item set from entity @s SelectedItem.components.minecraft:charged_projectiles.[0]
execute if entity @n[type=item,tag=cartucho-invalido,tag=nuevo,nbt={Item:{id:"minecraft:barrier"}}] run kill @n[type=item,tag=cartucho-invalido,tag=nuevo,nbt={Item:{id:"minecraft:barrier"}}]
tag @n[type=item,tag=cartucho-invalido,tag=nuevo] remove nuevo
item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}']