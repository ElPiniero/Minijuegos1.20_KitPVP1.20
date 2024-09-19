tag @s add Resucitado
execute as @a[tag=Esperando_Resucitacion,tag=!sesion_no_iniciada] if score @s INESoldado = @e[type=interaction,tag=Cerebro_Tumba,limit=1,tag=Resucitado] INESoldado run tag @s add Resucitado
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
execute as @a[tag=Resucitado,tag=!sesion_no_iniciada,tag=Poseidon] run give @s[tag=Poseidon] trident[unbreakable={},enchantments={levels:{"minecraft:smite":9,"minecraft:loyalty":3}}]
execute positioned ~ ~-1 ~ if score @e[type=item_display,tag=Pies_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado run kill @e[type=item_display,tag=Pies_Tumba,sort=nearest,limit=1,distance=..1]
execute if score @e[type=item_display,tag=Cuerpo_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado run kill @e[type=item_display,tag=Cuerpo_Tumba,sort=nearest,limit=1,distance=..1]
execute positioned ~ ~1 ~ if score @e[type=item_display,tag=Cabeza_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado run kill @e[type=item_display,tag=Cabeza_Tumba,sort=nearest,limit=1,distance=..1]
execute positioned ~ ~1.25 ~ if score @e[type=text_display,tag=Nombre_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado run kill @e[type=text_display,tag=Nombre_Tumba,sort=nearest,limit=1,distance=..1]
kill @s