execute unless score @s Disparo-Rifle matches 1.. run item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute as @e[type=arrow] at @s on origin if entity @s[tag=Militar,scores={Crossbow=1}] unless score @s Disparo-Rifle matches 1.. run kill @n[type=arrow]
execute as @e[type=arrow] at @s on origin if entity @s[tag=Militar,scores={Crossbow=2..}] run kill @n[type=arrow]

item replace entity @s[scores={Crossbow=2..}] weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
scoreboard players set @s[scores={Crossbow=2..}] Disparo-Rifle 0
scoreboard players set @s[scores={Crossbow=2..}] Crossbow 0

execute if score @s Municion_Rifle matches ..0 run return fail
execute if score @s Crossbow matches 0 run return fail

scoreboard players add @s Disparo-Rifle 1
execute if score @s Disparo-Rifle matches 2 run function kitpvp:kits/militar/rifle/disparo
execute if score @s Municion_Rifle matches ..0 run item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}']
scoreboard players set @s[scores={Disparo-Rifle=3..}] Disparo-Rifle 1