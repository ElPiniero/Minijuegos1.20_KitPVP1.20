execute as @e[type=egg,tag=Bola] at @s run function kitpvp:solitario/tienda/congelante/proyectil
execute as @e[type=iron_golem,tag=!Golem] at @s run function kitpvp:solitario/golems
execute as @e[tag=emboscado,type=!#kitpvp:inmunes] unless entity @e[tag=emboscador,type=husk] run tag @s remove emboscado
kill @e[type=trident,nbt={inGround:1b},nbt=!{item:{components:{"minecraft:enchantments":{}}}}]
kill @e[type=experience_orb]
scoreboard players reset @a[tag=!sesion_no_iniciada] Conteo_Torretas
execute as @e[type=snow_golem,tag=Torreta] run scoreboard players add @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] Conteo_Torretas 1
scoreboard players reset @a[tag=!sesion_no_iniciada] Conteo_Golems

execute as @e[type=zombie_villager,tag=!jefes] run attribute @s movement_speed base set .42
execute as @e[type=#zombies,tag=lider-ola,tag=!jefes] at @s run function kitpvp:solitario/hordas/oleada/acelerar_lideres
execute as @e[type=interaction,tag=Vector_oleada] run function kitpvp:solitario/hordas/oleada/limpiadera-vectores
#execute as @e[type=endermite,tag=Guia_oleada,tag=!nuevo] on vehicle on vehicle at @s as @e[type=#zombies,tag=!nuevo,tag=!nuevo2,limit=25] run function kitpvp:solitario/hordas/oleada/reactivar_zombis
execute as @e[type=#zombies,tag=!nuevo,tag=!nuevo2,tag=!lider-ola,tag=!jefes_guia] run function kitpvp:solitario/hordas/oleada/reactivar_zombis
#execute as @e[type=#zombies,tag=jefes,tag=jefes_guia] at @s if entity @p[gamemode=adventure,distance=..50] run tag @s remove jefes_guia

execute as @e[type=iron_golem] run scoreboard players add @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] Conteo_Golems 1
execute as @a[tag=!sesion_no_iniciada] at @s run spawnpoint @s ~ ~ ~
execute as @a[tag=!sesion_no_iniciada,tag=Poseidon,nbt={FallFlying:1b}] at @s if data storage supervivencia-zombis {Horda:"5"} run tp @e[type=#zombies,limit=3,sort=random] @s[gamemode=!spectator]
execute as @a[tag=!sesion_no_iniciada,tag=Quetzal,nbt={FallFlying:1b}] at @s if data storage supervivencia-zombis {Horda:"5"} run tp @e[type=#zombies,limit=3,sort=random] @s[gamemode=!spectator]
execute as @a[tag=!sesion_no_iniciada,tag=Militar,nbt={FallFlying:1b}] at @s if data storage supervivencia-zombis {Horda:"5"} run tp @e[type=#zombies,limit=3,sort=random] @s[gamemode=!spectator]
execute as @a[tag=!sesion_no_iniciada,tag=Tecnico,nbt={FallFlying:1b}] at @s if data storage supervivencia-zombis {Horda:"5"} run tp @e[type=#zombies,limit=3,sort=random] @s[gamemode=!spectator]
schedule function kitpvp:solitario/materiales_cortos 5t