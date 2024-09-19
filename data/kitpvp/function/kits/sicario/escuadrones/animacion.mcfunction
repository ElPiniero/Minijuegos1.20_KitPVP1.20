scoreboard players add @s Animacion 1
execute if score @s Animacion matches 1..20 run tp @s ~ ~.15 ~
execute if score @s Animacion matches 1..20 run particle block{block_state:"minecraft:dirt"} ~ ~1 ~ .2 .2 .2 1 10 force
execute if score @s Animacion matches 21.. run data modify entity @s NoAI set value 0b
execute if score @s Animacion matches 21.. run data modify entity @s Invulnerable set value 0b
execute if score @s Animacion matches 21.. run scoreboard players reset @s Animacion