execute as @a[tag=!sesion_no_iniciada,scores={EnGappleON=1}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={GappleON=1}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={Damage=1..}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={AbsorbedDamage=1..}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={Shield=1..}] run function kitpvp:cuerpo_del_juego/particulas
execute as @a[tag=!sesion_no_iniciada,scores={Potion=1}] run function kitpvp:cuerpo_del_juego/particulas
scoreboard players reset @a[tag=!sesion_no_iniciada,scores={Totem=1..}] Totem

execute if data storage modo_de_pvp {Mapa:"pueblo"} run function kitpvp:cuerpo_del_juego/materiales_mapa/pueblo
execute if data storage modo_de_pvp {Mapa:"aldea"} run function kitpvp:cuerpo_del_juego/materiales_mapa/aldea
execute if data storage modo_de_pvp {Mapa:"habitacion"} run function kitpvp:cuerpo_del_juego/materiales_mapa/habitacion

execute if data storage modo_de_pvp {Modo:"arena"} as @a[tag=!sesion_no_iniciada,scores={Reaparecer=1}] run spreadplayers -58 -24 1 150 under 139 false @s
execute if data storage modo_de_pvp {Modo:"arena"} as @a[tag=!sesion_no_iniciada,scores={Reaparecer=1}] run scoreboard players reset @s Reaparecer
execute as @a[tag=!sesion_no_iniciada,scores={Desactivando=1..}] run function kitpvp:kits/inicio
execute as @a[tag=!sesion_no_iniciada,scores={Muertes=1..}] at @s run function kitpvp:cuerpo_del_juego/muertes
execute as @a[tag=!sesion_no_iniciada,scores={joinGameKit=1..}] unless score @s Registro matches 1 at @s run function kitpvp:cuerpo_del_juego/bienvenida