scoreboard players add @s Levitado 1
execute if score @s Levitado matches 1 run effect give @s levitation infinite 9 true
execute if score @s Levitado matches 1 run attribute @s generic.knockback_resistance base set 100
execute if score @s Levitado matches 10 run effect clear @s levitation
execute if score @s Levitado matches 11 run attribute @s generic.gravity base set 0
execute if score @s Levitado matches 200.. run attribute @s generic.gravity base set .08
execute if score @s Levitado matches 200.. run scoreboard players reset @s Levitado