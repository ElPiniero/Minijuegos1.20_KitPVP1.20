effect give @s hunger 1 100
execute as @s[tag=!Cumplido] if predicate kitpvp:25 run tag @s add fuerza
execute as @s[tag=fuerza] run tag @s add Cumplido
execute as @s[tag=fuerza] run effect give @s strength 90 2
execute as @s[tag=fuerza] at @s run particle happy_villager ~ ~1 ~ .4 .4 .4 1 10 normal
execute as @s[tag=fuerza] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=fuerza] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=fuerza] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=fuerza] run tag @s remove fuerza

execute as @s[tag=!Cumplido] if predicate kitpvp:25 run tag @s add velocidad
execute as @s[tag=velocidad] run tag @s add Cumplido
execute as @s[tag=velocidad] run effect give @s speed 90 2
execute as @s[tag=velocidad] at @s run particle happy_villager ~ ~1 ~ .4 .4 .4 1 10 normal
execute as @s[tag=velocidad] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=velocidad] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=velocidad] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=velocidad] run tag @s remove velocidad

execute as @s[tag=!Cumplido] if predicate kitpvp:25 run tag @s add resistencia
execute as @s[tag=resistencia] run tag @s add Cumplido
execute as @s[tag=resistencia] run effect give @s resistance 90 2
execute as @s[tag=resistencia] at @s run particle happy_villager ~ ~1 ~ .4 .4 .4 1 10 normal
execute as @s[tag=resistencia] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=resistencia] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=resistencia] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=resistencia] run tag @s remove resistencia

execute as @s[tag=!Cumplido] if predicate kitpvp:25 run tag @s add salud
execute as @s[tag=salud] run tag @s add Cumplido
execute as @s[tag=salud] run effect give @s health_boost 150 4
execute as @s[tag=salud] run effect give @s instant_health 1 4
execute as @s[tag=salud] at @s run particle happy_villager ~ ~1 ~ .4 .4 .4 1 10 normal
execute as @s[tag=salud] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=salud] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=salud] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=salud] run tag @s remove salud

execute as @s[tag=!Cumplido] if predicate kitpvp:25 run tag @s add absorcion
execute as @s[tag=absorcion] run tag @s add Cumplido
execute as @s[tag=absorcion] run effect give @s absorption 150 9
execute as @s[tag=absorcion] at @s run particle happy_villager ~ ~1 ~ .4 .4 .4 1 10 normal
execute as @s[tag=absorcion] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=absorcion] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=absorcion] at @s run playsound block.enchantment_table.use master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1.5
execute as @s[tag=absorcion] run tag @s remove absorcion

scoreboard players reset @s[tag=Cumplido] GDS
tag @s[tag=Cumplido] remove Cumplido