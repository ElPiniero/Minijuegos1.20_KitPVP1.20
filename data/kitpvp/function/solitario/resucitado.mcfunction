tag @s add Resucitado

scoreboard players operation #ine-tumba INESoldado = @s INESoldado
execute as @a[tag=Esperando_Resucitacion,tag=!sesion_no_iniciada] if score @s INESoldado = #ine-tumba INESoldado run tag @s add Resucitado

tp @a[tag=Resucitado,tag=!sesion_no_iniciada] @s
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run scoreboard players operation @s ZombieShop = @s ZombieShop_Base
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run scoreboard players reset @s ZombieShop_Base
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run gamemode adventure @s
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run function kitpvp:kits/efectos
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@s"}],"bold":true,"color":"blue"},{"text":" ha sido resucitado","bold":false,"color":"dark_gray"}]
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run scoreboard players add #jugadores-vivos Conteo 1
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run tag @s remove espectador
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run tag @s add Jugador_Vivo
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] at @s run playsound entity.allay.ambient_without_item master @a ~ ~ ~ 3 0.7
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run tag @s remove Esperando_Resucitacion
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada] run tag @s remove Resucitado
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada,tag=Poseidon] run clear @s trident
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada,tag=Poseidon] run give @s[tag=Poseidon] trident[unbreakable={},enchantments={levels:{"minecraft:smite":9,"minecraft:loyalty":3}},attribute_modifiers={modifiers:[{id:"23423",type:"attack_damage",amount:9,operation:"add_value",slot:hand},{id:"666",type:"attack_speed",amount:-2.9,operation:"add_value",slot:hand},{id:"weye",type:"entity_interaction_range",amount:1,operation:"add_value",slot:hand}]}]

execute on vehicle on passengers run kill @s
execute on vehicle run kill @s
kill @s