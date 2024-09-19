execute as @s[advancements={kitpvp:kitpvp/stray_conteo=true}] run scoreboard players add @s lg_BuenosTiros 1
advancement revoke @s only kitpvp:kitpvp/stray_conteo
execute if score @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 4
execute if score @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}}}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 7
execute if score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}]}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 4
execute if score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}}]}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 7
scoreboard players reset @s Crossbow
clear @s bucket