#------------------------------------------------------------RECARGADA------------------------------------------------------------#

give @s arrow[custom_name='[{"text":"Bala de Rifle","italic":false,"color":"white"}]']
execute store result score @s Municion_Rifle run data get entity @s Inventory.[{Slot:-106b}].count
playsound entity.horse.armor master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
scoreboard players set @s[scores={Municion_Rifle=40..}] Municion_Rifle 40
function kitpvp:kits/militar/rifle/cobrando
scoreboard players reset @s Recargar
tag @s remove R-Recargar
item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]