scoreboard players add @s Animacion 1
execute if score @s Animacion matches 1..19 if predicate kitpvp:50 run tp @s ~ ~.1 ~
execute if score @s Animacion matches 20..40 if predicate kitpvp:50 run tp @s ~ ~-.1 ~
execute if score @s Animacion matches 41.. run kill @s