#------------------------------QUETZAL------------------------------#

execute if score @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 4
execute if score @s[nbt={SelectedItem:{tag:{Enchantments:[{id:"minecraft:power",lvl:5s}]}}}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 6
execute if score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:power",lvl:3s}]}}]}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 4
execute if score @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:power",lvl:6s}]}}]}] Crossbow matches 1.. positioned ~ ~1 ~ as @e[type=#arrows,sort=nearest,limit=3,distance=..2] run data modify entity @s damage set value 4

effect give @s strength infinite 0 true
effect give @s fire_resistance infinite 0 true
effect give @s[tag=!supervivencia-z] resistance infinite 0 true
effect give @s[tag=supervivencia-z] resistance infinite 1 true

execute if score @s GDS matches 1 run function kitpvp:kits/quetzal/efectos
scoreboard players reset @s Crossbow
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.parrot.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1