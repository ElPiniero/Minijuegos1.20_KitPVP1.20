execute as @a[tag=!sesion_no_iniciada,scores={EnGappleON=1}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={GappleON=1}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={Damage=1..}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={AbsorbedDamage=1..}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={Shield=1..}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={Potion=1}] run function kitpvp:cuerpo_del_juego/particulas
scoreboard players reset @a[tag=!sesion_no_iniciada,scores={Totem=1..}] Totem
execute as @e[type=interaction,tag=Informacion] at @s on target if entity @s run function kitpvp:cuerpo_del_juego/informacion
execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~ ~ #kitpvp:limites run tp @s 0 105 0
execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~1 ~ #kitpvp:limites run tp @s 0 105 0
execute as @a[tag=!sesion_no_iniciada,scores={Muertes=1..}] at @s run function kitpvp:cuerpo_del_juego/muertes
execute as @a[tag=!sesion_no_iniciada,scores={joinGameKit=1..}] unless score @s Registro matches 1 at @s run function kitpvp:cuerpo_del_juego/bienvenida