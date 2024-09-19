execute unless score @s Municion_Rifle matches ..0 run scoreboard players add @s Disparo-Rifle 1
execute unless score @s Municion_Rifle matches ..0 run execute if score @s Disparo-Rifle matches 1 run function kitpvp:kits/militar/rifle/disparo
execute unless score @s Municion_Rifle matches ..0 run scoreboard players reset @s[scores={Disparo-Rifle=2..}] Disparo-Rifle
execute as @e[type=arrow] at @s on origin if entity @s[scores={Crossbow=1..}] run kill @e[type=arrow,sort=nearest,limit=1]
item replace entity @s[scores={Crossbow=2..}] weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute if score @s Municion_Rifle matches ..0 run item replace entity @s weapon.mainhand with crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}']
scoreboard players reset @s[scores={Crossbow=2..}] Crossbow