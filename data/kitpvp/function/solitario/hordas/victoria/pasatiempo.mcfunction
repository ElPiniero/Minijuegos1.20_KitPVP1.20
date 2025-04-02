schedule clear kitpvp:solitario/hordas/victoria/victoria
execute as @a[tag=!sesion_no_iniciada] at @s run function kitpvp:cuerpo_del_juego/musica/reiniciar_musica
tellraw @a[tag=!sesion_no_iniciada,tag=!Jugador_Zombi] {"text": "- Ya puedes buscar la salida en la luz","color": "gold"}
execute if data storage modo_de_pvp {Mapa:"pueblo"} run summon block_display -187 72 103 {Tags:["salida"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4f,-4f,-4f],scale:[8f,8f,8f]},block_state:{Name:"minecraft:white_concrete"},teleport_duration:1}
execute if data storage modo_de_pvp {Mapa:"pueblo"} run setblock -187 72 103 light[level=15]

execute if data storage modo_de_pvp {Mapa:"aldea"} run summon block_display -416 108 61 {Tags:["salida"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4f,-4f,-4f],scale:[8f,8f,8f]},block_state:{Name:"minecraft:white_concrete"},teleport_duration:1}
execute if data storage modo_de_pvp {Mapa:"aldea"} run setblock -416 108 61 light[level=15]

execute if data storage modo_de_pvp {Mapa:"habitacion"} run summon block_display -67 100 230 {Tags:["salida"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-4f,-4f,-4f],scale:[8f,8f,8f]},block_state:{Name:"minecraft:verdant_froglight"},teleport_duration:1}

execute as @e[tag=salida] run data modify entity @s Rotation.[1] set value 50f
function kitpvp:solitario/hordas/victoria/materiales