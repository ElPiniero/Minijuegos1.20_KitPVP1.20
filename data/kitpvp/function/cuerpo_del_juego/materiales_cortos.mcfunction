#clear @a[tag=!sesion_no_iniciada,tag=!Militar] crossbow[custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}']
#clear @a[tag=!sesion_no_iniciada,tag=!Militar] crossbow[custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}']
#clear @a[tag=!sesion_no_iniciada,tag=!Militar] crossbow[custom_name='{"text":"Lanzamisiles","italic":false,"color":"gold"}']

execute as @e[type=arrow,nbt={inGround: 1b}] run kill @e[type=arrow,nbt={inGround: 1b}]
execute as @e[type=spectral_arrow,nbt={inGround: 1b}] run kill @e[type=spectral_arrow,nbt={inGround: 1b}]

execute at @a run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace snow
execute as @e[type=chicken] at @s run function kitpvp:cuerpo_del_juego/tag_muerte
execute as @e[type=!#kitpvp:inmunes,tag=ya_me_atacaron] at @s on attacker unless entity @s[tag=Sicario] as @e[type=!#kitpvp:inmunes,distance=..1,sort=nearest,limit=1] run tag @s remove ya_me_atacaron

execute as @a[tag=Sicario,tag=!sesion_no_iniciada,gamemode=!spectator,tag=!Jugador_Zombi] at @s run function kitpvp:kits/sicario/escuadrones/siguiendo_escuadron

function kitpvp:cuerpo_del_juego/condicionales_logros
function kitpvp:cuerpo_del_juego/etiquetar_logro

execute unless block -146 84 -3 lime_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/oxxo/trigger
execute unless block -150 94 -52 lime_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/similares/trigger
execute unless block 61 82 -16 redstone_lamp[lit=true] run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/trigger
execute unless block -83 94 -128 lime_concrete if block -83 92 -128 red_concrete if block -83 91 -128 cyan_terracotta if block -82 92 -128 blue_concrete if block -82 91 -128 lime_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/imss/disparo
execute unless block -28 87 -136 lime_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/super_sanchez/trigger

execute as @a[tag=!sesion_no_iniciada,tag=zona_de_kits] run function kitpvp:cuerpo_del_juego/material_zdk
execute as @a[tag=!sesion_no_iniciada] if score @s Racha > @s Racha_mas_Alta run scoreboard players operation @s Racha_mas_Alta = @s Racha

execute as @a[tag=!zona_de_kits] if data storage modo_de_pvp {Modo:"arena"} at @e[type=interaction,tag=Spawn,sort=random,limit=1] run spawnpoint @s ~ ~ ~ ~
execute as @e[type=block_display,tag=Pastel,tag=sin_disparar] at @s unless entity @p[tag=Neon,distance=..3] run kill @s
execute as @e[type=block_display,tag=Pastel,tag=yamerodisparado] at @s unless entity @p[tag=Neon,distance=..3] run kill @s

execute as @a[tag=!sesion_no_iniciada] run function kitpvp:cuerpo_del_juego/comandos

schedule function kitpvp:cuerpo_del_juego/materiales_cortos 5t