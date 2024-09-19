execute if score @s Cohete matches 1.. if entity @s[nbt={FallFlying:1b}] unless score @s Crossbow matches 1.. run clear @s elytra
execute if score @s Cohete matches 1.. unless score @s Crossbow matches 1.. run give @s elytra[unbreakable={},enchantments={projectile_protection:4,protection:5,binding_curse:1},attribute_modifiers=[{type:"generic.armor",slot:"chest",operation:"add_value",id:"armor",amount:8}]] 1
scoreboard players reset @s Crossbow
execute if score @s Cohete matches 1.. run scoreboard players reset @s Cohete