scoreboard players operation #encontrar_proyectil INESoldado = @s INESoldado
execute as @e[type=ender_pearl] if score @s INESoldado = #encontrar_proyectil INESoldado run kill @s
execute as @e[type=trident] if score @s INESoldado = #encontrar_proyectil INESoldado run kill @s