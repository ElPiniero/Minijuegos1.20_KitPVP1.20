execute if score @s Disparo-Escopeta matches 8 run return run scoreboard players reset @s militar-descargar
scoreboard players add @s Escopeta-cooldown 1
item replace entity @s weapon.mainhand with crossbow[unbreakable={},enchantments={quick_charge:4},custom_name='[{"text":"Escopeta","italic":false,"color":"dark_purple"}]']
scoreboard players reset @s militar-descargar