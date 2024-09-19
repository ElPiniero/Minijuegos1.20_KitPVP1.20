tag @s add catalejao
scoreboard players reset @s Alcance-Bala
scoreboard players operation #ine-neon INESoldado = @s INESoldado
execute run playsound entity.illusioner.prepare_blindness master @a ~ ~ ~ 1 2

execute unless data storage supervivencia-zombis {Activado:1b} if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_dye"}]}] anchored eyes run function kitpvp:kits/neon/tintas/atractor_proyectil
execute unless data storage supervivencia-zombis {Activado:1b} if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:purple_dye"}]}] anchored eyes run function kitpvp:kits/neon/tintas/enganchador_proyectil
execute if data storage supervivencia-zombis {Activado:1b} if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_dye"}]}] anchored eyes run function kitpvp:kits/neon/tintas/desarmador_proyectil
execute if data storage supervivencia-zombis {Activado:1b} if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:purple_dye"}]}] anchored eyes run function kitpvp:kits/neon/tintas/levitador_proyectil

execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:light_blue_dye"}]}] run clear @s light_blue_dye 1
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:purple_dye"}]}] run clear @s purple_dye 1
tag @s remove catalejao
tag @s remove yaenganche
tag @s remove yaatraje

scoreboard players reset @s Catalejo
scoreboard players reset @s Alcance-Bala