execute if entity @s[gamemode=spectator] run return fail
scoreboard players reset @s[nbt=!{SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}'},count:1,id:"minecraft:crossbow"}},tag=Rifle] Crossbow
tag @s[nbt=!{SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}'},count:1,id:"minecraft:crossbow"}},tag=Rifle] remove Recarga
tag @s[nbt=!{SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}'},count:1,id:"minecraft:crossbow"}},tag=Rifle] remove Rifle
tag @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}'},count:1,id:"minecraft:crossbow"}},tag=!Rifle] add Rifle
execute as @s[tag=Rifle] run function kitpvp:kits/militar/rifle/materiales