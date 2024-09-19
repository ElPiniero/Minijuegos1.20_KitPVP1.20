#------------------------------------------------------------RECARGAS------------------------------------------------------------#

scoreboard players reset @s Recargar
scoreboard players set @s Escopeta-cooldown 1
scoreboard players add @s Disparo-Escopeta 1
playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1.3 2
item replace entity @s weapon.mainhand with crossbow[unbreakable={},enchantments={quick_charge:4},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}']
tag @s remove E-Recargar
execute if score @s Disparo-Escopeta matches 8.. run playsound entity.horse.armor master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
execute if score @s Disparo-Escopeta matches 8.. run scoreboard players reset @s Escopeta-cooldown
execute if score @s Disparo-Escopeta matches 8.. run item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]