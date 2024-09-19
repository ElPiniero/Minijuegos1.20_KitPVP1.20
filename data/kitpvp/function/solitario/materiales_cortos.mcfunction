execute as @e[type=egg,tag=Bola] at @s run function kitpvp:solitario/tienda/congelante/proyectil
execute as @e[type=iron_golem,tag=!Golem] at @s run function kitpvp:solitario/golems
execute as @e[tag=emboscado,type=!#kitpvp:inmunes] unless entity @e[tag=emboscador,type=husk] run tag @s remove emboscado
kill @e[type=trident,nbt={inGround:1b},nbt=!{item:{components:{"minecraft:enchantments":{}}}}]
kill @e[type=experience_orb]
scoreboard players reset @a[tag=!sesion_no_iniciada] Conteo_Torretas
execute as @e[type=snow_golem,tag=Torreta] run scoreboard players add @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] Conteo_Torretas 1
scoreboard players reset @a[tag=!sesion_no_iniciada] Conteo_Golems
execute as @e[type=iron_golem] run scoreboard players add @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] Conteo_Golems 1
execute as @a[tag=!sesion_no_iniciada] at @s run spawnpoint @s ~ ~ ~
execute as @a[tag=!sesion_no_iniciada,tag=Poseidon,nbt=!{OnGround:1b}] at @s if score #supervivencia-zombis ZombieBuff matches 630.. run tp @e[type=#zombies,limit=3,sort=nearest] @s
execute as @a[tag=!sesion_no_iniciada,tag=Quetzal,nbt=!{OnGround:1b}] at @s if score #supervivencia-zombis ZombieBuff matches 630.. run tp @e[type=#zombies,limit=3,sort=nearest] @s
execute as @a[tag=!sesion_no_iniciada,tag=Militar,nbt=!{OnGround:1b}] at @s if score #supervivencia-zombis ZombieBuff matches 630.. run tp @e[type=#zombies,limit=3,sort=nearest] @s
execute as @a[tag=!sesion_no_iniciada,tag=Tecnico,nbt=!{OnGround:1b}] at @s if score #supervivencia-zombis ZombieBuff matches 630.. run tp @e[type=#zombies,limit=3,sort=nearest] @s
schedule function kitpvp:solitario/materiales_cortos 5t