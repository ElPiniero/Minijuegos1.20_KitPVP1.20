execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}',"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]},count:1,id:"minecraft:crossbow"}},tag=R-Recargar] unless entity @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}',"minecraft:charged_projectiles":[{components:{"minecraft:custom_name":'{"color":"white","italic":false,"text":"Bala de Rifle"}'},id:"minecraft:arrow"}]},count:1,id:"minecraft:crossbow"}}] run function kitpvp:kits/militar/rifle/filtrando-carga
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}',"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]},count:1,id:"minecraft:crossbow"}},tag=R-Recargar] unless entity @s[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_name":'{"color":"white","italic":false,"text":"Bala de Rifle"}'},id:"minecraft:arrow"}]}] run function kitpvp:kits/militar/rifle/filtrando-carga

function kitpvp:kits/militar/rifle/recargas

execute if score @s Crossbow matches 1.. run function kitpvp:kits/militar/rifle/disparo_automatico
execute if score @s Crossbow matches 1.. if score @s Municion_Rifle matches ..0 run scoreboard players reset @s Crossbow

execute as @s[tag=!R-Recargar] if score @s Municion_Rifle matches ..0 run function kitpvp:kits/militar/rifle/carga-agotada
execute if score @s Municion_Rifle matches ..0 run function kitpvp:kits/militar/arma-descargada

execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_name":'{"color":"green","italic":false,"text":"Rifle de Asalto"}',"minecraft:charged_projectiles":[{components:{"minecraft:custom_name":'{"color":"white","italic":false,"text":"Bala de Rifle"}'},count:1,id:"minecraft:arrow"}]},count:1,id:"minecraft:crossbow"}}] run function kitpvp:kits/militar/rifle/recargada
function kitpvp:kits/militar/rifle/municion