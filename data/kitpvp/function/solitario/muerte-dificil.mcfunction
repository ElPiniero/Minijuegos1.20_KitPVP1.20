gamemode spectator @s
scoreboard players remove @s bajas_jugador 1
tag @s add Jugador_Zombi
tag @s[tag=CaDeOv] add Jugador_Zombi_1
tag @s[tag=CaDeNe] add Jugador_Zombi_1
tag @s[tag=CaDeEn] add Jugador_Zombi_1
tag @s[tag=Elite] add Jugador_Zombi_1
tag @s[tag=1.8] add Jugador_Zombi_1
tag @s[tag=Poseidon] add Jugador_Zombi_1
tag @s[tag=Quetzal] add Jugador_Zombi_2
tag @s[tag=Enderman] add Jugador_Zombi_2
tag @s[tag=Faraon] add Jugador_Zombi_2
tag @s[tag=Doctor] add Jugador_Zombi_2
tag @s[tag=Militar] add Jugador_Zombi_2
tag @s[tag=Tecnico] add Jugador_Zombi_1
tag @s[tag=Nexo] add Jugador_Zombi_1
tag @s[tag=Creeper] add Jugador_Zombi_2
tag @s[tag=Zorro] add Jugador_Zombi_2
tag @s[tag=Sicario] add Jugador_Zombi_2
tag @s[tag=Stray] add Jugador_Zombi_1
tag @s[tag=Neon] add Jugador_Zombi_2
function kitpvp:solitario/limpiar_items
scoreboard players reset @s ZombieShop
scoreboard players reset @s RegistrarDiamante
playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@s"}],"bold":true,"color":"dark_red"},{"text":" ah sido poseido","bold":false,"color":"dark_gray"}]
tag @s add espectador
scoreboard players remove #jugadores-vivos Conteo 1
function kitpvp:solitario/muerte-dificil_conteo