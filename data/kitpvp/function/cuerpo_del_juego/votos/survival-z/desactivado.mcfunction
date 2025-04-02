scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
execute as @a[tag=!sesion_no_iniciada] at @s run function kitpvp:cuerpo_del_juego/trigger_zona_de_kits
tellraw @a[tag=!sesion_no_iniciada] [{"text": "Subminijuego desactivado con ","color": "green"},{"score":{"objective":"Z-S_EnContra","name":"#contra-s-z"},"color": "gold","bold": true},{"text": "/","color": "gold"},{"score":{"objective":"Conteo","name":"#jugadores"},"color": "gold","bold": true},{"text": " votos","color": "gold"}]
playsound block.note_block.harp master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10000 2
tag @a[tag=!sesion_no_iniciada] remove supervivencia-z
execute as @a[tag=!sesion_no_iniciada] run team leave @s
scoreboard objectives setdisplay sidebar muertes_jugador
data merge storage supervivencia-zombis {Horda:"sin_iniciar"}
data merge storage supervivencia-zombis {Dificultad:"sin_iniciar"}
data merge storage supervivencia-zombis {Iniciado:0b}
data merge storage supervivencia-zombis {Activado:0b}
tag @a[tag=!sesion_no_iniciada] remove survival-facil
tag @a[tag=!sesion_no_iniciada] remove survival-normal
tag @a[tag=!sesion_no_iniciada] remove survival-

execute positioned -4 235.75 143 run kill @n[type=item_display]
execute positioned -4 235.75 141 run kill @n[type=text_display]
execute positioned -3.9 235.55 143 run kill @n[type=interaction]

execute positioned -4 235 143 run kill @n[type=item_display]
execute positioned -4 235 141 run kill @n[type=text_display]
execute positioned -3.9 234.8 143 run kill @n[type=interaction]

execute positioned -4 234.25 143 run kill @n[type=item_display]
execute positioned -4 234.25 141 run kill @n[type=text_display]

execute positioned -4 235.75 141 run kill @n[type=item_display]
execute positioned -4 235 141 run kill @n[type=item_display]
execute positioned -4 234.25 141 run kill @n[type=item_display]

execute positioned -3.9 235.65 140.4 run kill @n[type=interaction]
execute positioned -3.9 234.9 140.2 run kill @n[type=interaction]
execute positioned -3.9 234.15 140.2 run kill @n[type=interaction]

data modify entity @n[type=item_display,tag=modo-zombis] item.components."minecraft:profile" set value {id:[I;-1679339935,-1900460474,-1502236591,1080088365],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}]}
data modify entity @n[type=item_display,tag=modo-zombis] Glowing set value 0b

summon text_display -4 236 140 {Rotation:[-90f,0f],text:'{"text":"Modo","color":"white","italic":true,"font":"uniform","bold":true}',billboard:fixed,alignment:center,transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0f, 0f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 4.0f, 0.0f]},UUID:[I;1,924562,24684279,236346898],brightness:{block:15,sky:15}}

summon item_display -4 235 143 {Tags:["modo-eliminacion"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-3.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -1576374045, -1492096122], height: 0.0f,UUID:[I;825557,924562,24684279,236346898]}
summon interaction -3.75 235.25 143.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["modo-eliminacion"], height: 0.5f,UUID:[I;825417,66666,246279,23634898]}
summon item_display -4 234 143 {Tags:["modo-arena"],Motion: [0.0d, 0.0d, 0.0d], glow_color_override: 655104, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}], id: [I; -1679339935, -1900460474, -1502236591, 1080088365]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 1b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, -0.37f, -0.5f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.5f, 1.0f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 90.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-3.5d, 235.0d, 142.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 570414625, -517193338, -157674045, -1492096122], height: 0.0f,UUID:[I;82541557,1,24684279,236346898]}
summon interaction -3.75 234.25 143.50 {Motion: [0.0d, 0.0d, 0.0d], Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, response: 1b, Fire: 0s, width: 0.5f, Tags: ["modo-arena"], height: 0.5f,UUID:[I;825417,9262,7,23634898]}

summon text_display -4 235 142.000 {Rotation:[-90f,0f],alignment:left,text:'[{"text":""},{"text":"E","bold":true,"color":"gold"},{"text":"L","bold":true,"color":"#d6a541"},{"text":"I","bold":true,"color":"#d3a84f"},{"text":"M","bold":true,"color":"#d0ab5d"},{"text":"I","bold":true,"color":"#cead6b"},{"text":"N","bold":true,"color":"#cbb079"},{"text":"A","bold":true,"color":"#c8b386"},{"text":"C","bold":true,"color":"#c6b594"},{"text":"I","bold":true,"color":"#c3b8a2"},{"text":"Ó","bold":true,"color":"#c0bbb0"},{"text":"N","bold":true,"color":"gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [.4f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 0.0f]},UUID:[I;825457,9262,246879,9999]}
summon text_display -4 234 142.000 {Rotation:[-90f,0f],alignment:left,text:'[{"text":""},{"text":"A","bold":true,"color":"gold"},{"text":"R","bold":true,"color":"#d2a956"},{"text":"E","bold":true,"color":"#cbb079"},{"text":"N","bold":true,"color":"#c4b79b"},{"text":"A","bold":true,"color":"gray"}]',transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-.28f, .3f, -.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.5f, 1.5f, 0.0f]},UUID:[I;82541557,924562,24684279,888]}

summon item_display -4 235 139.5 {Motion: [0.0d, 0.0d, 0.0d], glow_color_override: -1, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM4ZWExZjUxZjI1M2ZmNTE0MmNhMTFhZTQ1MTkzYTRhZDhjM2FiNWU5YzZlZWM4YmE3YTRmY2I3YmFjNDAifX19"}], id: [I; -1467980511, 420563077, -2018747803, 1968399586]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.365f, 0.865f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 0.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 137.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 1779249464, 2001421820, -1299492566, 1857922208], height: 0.0f,UUID:[I;82541557,65,24684279,236346898]}
summon item_display -4 234 140.5 {Motion: [0.0d, 0.0d, 0.0d], glow_color_override: -1, item: {components: {"minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmM4ZWExZjUxZjI1M2ZmNTE0MmNhMTFhZTQ1MTkzYTRhZDhjM2FiNWU5YzZlZWM4YmE3YTRmY2I3YmFjNDAifX19"}], id: [I; -1467980511, 420563077, -2018747803, 1968399586]}}, count: 1, id: "minecraft:player_head"}, shadow_radius: 0.0f, Invulnerable: 0b, Air: 300s, OnGround: 0b, PortalCooldown: 0, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [-0.730f, 0.865f, -0.499f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.5f, 0.5f, 0.5f]}, billboard: "fixed", shadow_strength: 1.0f, Rotation: [-90.0f, 0.0f], interpolation_duration: 0, teleport_duration: 0, FallDistance: 0.0f, Pos: [-1.5d, 235.0d, 137.5d], Fire: 0s, width: 0.0f, item_display: "fixed", view_range: 1.0f, UUID: [I; 1779249464, 2001421820, -1299492566, 185792228], height: 0.0f,UUID:[I;87,924562,24684279,236346898]}

summon interaction -3.9 235.73 139.85 {Tags:["info-eliminacion"],width:.25,height:.25,response:1b,UUID:[I;82541557,435454545,69,236346898]}
summon interaction -3.9 234.73 141.23 {Tags:["info-arena"],width:.25,height:.25,response:1b,UUID:[I;82541,92452,2777,236346898]}

execute positioned -4 235 143 run function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/eliminacion

execute as @a[scores={Musica=1..}] run trigger kitpvp-reiniciar-musica

schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_activar
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar
scoreboard players reset #tiempo-s-z
scoreboard players reset #contra-s-z
tag @a[tag=!sesion_no_iniciada] remove s-z-encontra
tag @a[tag=!sesion_no_iniciada] remove en_votacion