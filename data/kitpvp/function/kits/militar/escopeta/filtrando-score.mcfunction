summon item ~ ~ ~ {Item:{id:"minecraft:barrier",count:1,components:{"minecraft:unbreakable":{}}},Tags:["cartucho-invalido","nuevo"]}
data modify entity @n[type=item,tag=cartucho-invalido,tag=nuevo] Item set from entity @s SelectedItem.components.minecraft:charged_projectiles.[0]
execute if entity @n[type=item,tag=cartucho-invalido,tag=nuevo,nbt={Item:{id:"minecraft:barrier"}}] run kill @n[type=item,tag=cartucho-invalido,tag=nuevo,nbt={Item:{id:"minecraft:barrier"}}]
tag @n[type=item,tag=cartucho-invalido,tag=nuevo] remove nuevo
scoreboard players set @s Escopeta-cooldown 1
item replace entity @s weapon.mainhand with crossbow[unbreakable={},enchantments={quick_charge:4},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}']