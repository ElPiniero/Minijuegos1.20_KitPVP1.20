gamemode adventure @s
effect clear @s
attribute @s attack_knockback base set 0
execute on attacker if entity @s[tag=CaDeOv] run scoreboard players add @s Esp_CDO 1
execute on attacker if entity @s[tag=CaDeNe] run scoreboard players add @s Esp_CDN 1
execute on attacker if entity @s[tag=CaDeEn] run scoreboard players add @s Esp_CDE 1
execute on attacker if entity @s[tag=1.8] run scoreboard players add @s Esp_1-8 1
execute on attacker if entity @s[tag=Elite] run scoreboard players add @s Esp_Elite 1
execute on attacker if entity @s[tag=Poseidon] run scoreboard players add @s Esp_Poseidon 1
execute on attacker if entity @s[tag=Enderman] run scoreboard players add @s Esp_Enderman 1
execute on attacker if entity @s[tag=Quetzal] run scoreboard players add @s Esp_Quetzal 1
execute on attacker if entity @s[tag=Doctor] run scoreboard players add @s Esp_Doctor 1
execute on attacker if entity @s[tag=Zorro] run scoreboard players add @s Esp_Zorro 1
execute on attacker if entity @s[tag=Tecnico] run scoreboard players add @s Esp_Tecnico 1
execute on attacker if entity @s[tag=Nexo] run scoreboard players add @s Esp_Nexo 1
execute on attacker if entity @s[tag=Stray] run scoreboard players add @s Esp_Stray 1
execute on attacker if entity @s[tag=Militar] run scoreboard players add @s Esp_Militar 1
execute on attacker if entity @s[tag=Faraon] run scoreboard players add @s Esp_Faraon 1
execute on attacker if entity @s[tag=Creeper] run scoreboard players add @s Esp_Creeper 1
execute on attacker if entity @s[tag=Sicario] run scoreboard players add @s Esp_Sicario 1
execute on attacker if entity @s[tag=Neon] run scoreboard players add @s Esp_Neon 1
execute as @s[tag=!zona_de_kits] on attacker run scoreboard players add @s Racha 1
execute as @s[tag=!zona_de_kits] on attacker run scoreboard players add @s Bajas 1
execute as @s[tag=!zona_de_kits] on attacker run scoreboard players add @s muertes_jugador 1
team leave @s
team join Supervivientes @a[tag=supervivencia-z]
tp @s 14 231 140 -90 1
tag @s add zona_de_kits
execute as @s[tag=Sicario,tag=!sesion_no_iniciada,gamemode=!spectator,tag=!Jugador_Zombi] at @s run function kitpvp:kits/sicario/escuadrones/encontrar_escuadron
effect give @s saturation infinite 10 true
effect give @s resistance infinite 4 true
scoreboard players reset @s ZombieShop
scoreboard players reset @s Racha
scoreboard players reset @s Atraido
scoreboard players reset @s Atraido_Tiempo

execute store result storage sicarios sicario.sicario int 1 run scoreboard players get @s INESoldado
function kitpvp:kits/sicario/escuadrones/remover with storage sicarios sicario

tag @s remove enganchado
attribute @s jump_strength base set .4
scoreboard players reset @s Bajas
scoreboard players set @s Conteo_Racha 2
function kitpvp:kits/enderman/encontrar_perla
xp set @s 0 levels
xp set @s 0 points
clear @s
function kitpvp:kits/remover_tag
spawnpoint @s 14 231 140 -90.1
tag @s add zona_de_kits