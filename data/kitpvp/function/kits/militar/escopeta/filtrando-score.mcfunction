summon item ~ ~ ~ {Item:{id:"minecraft:barrier",count:1,components:{"minecraft:unbreakable":{}}}}
data modify entity @e[type=item,sort=nearest,limit=1,distance=..1] Item set from entity @s SelectedItem.components.minecraft:charged_projectiles.[0]
execute if entity @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{id:"minecraft:barrier"}}] run kill @e[type=item,sort=nearest,limit=1,distance=..1,nbt={Item:{id:"minecraft:barrier"}}]
scoreboard players set @s Escopeta-cooldown 1
item replace entity @s weapon.mainhand with crossbow[unbreakable={},enchantments={quick_charge:4},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}']