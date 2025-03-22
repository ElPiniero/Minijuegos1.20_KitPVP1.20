gamemode spectator @s
scoreboard players remove @s bajas_jugador 1
tag @s add morido
tag @s add Esperando_Resucitacion

tag @s add morido
summon item_display ~ ~ ~ {teleport_duration:1,Tags:["Pies_Tumba","nuevo"],item:{id:"minecraft:chiseled_stone_bricks",count:1}}
summon item_display ~ ~ ~ {Tags:["Cuerpo_Tumba","nuevo"],item:{id:"minecraft:stone_brick_wall",count:1},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}}
summon item_display ~ ~ ~ {teleport_duration:1,Tags:["Cabeza_Tumba","nuevo"],item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-1131791004,-94091108,-1532324962,1630265044],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWU4ZjZiZjVkN2YwZTY4YzIxODhiNTFkMDM4N2Y3MjYzYzVkYmQ1NjNlZmFjM2JjYmU0MmUzZTQ4YWVjMGM3ZCJ9fX0="}]}}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]}}
summon interaction ~ ~ ~ {response:1b,Tags:["Cerebro_Tumba","nuevo"],height:2f}
summon text_display ~ ~ ~ {alignment:"center",billboard:"vertical",Tags:["Nombre_Tumba","nuevo"],text:'[{"text": "","extra":[{"selector":"@a[tag=morido,limit=1]"}],"color": "white","bold": true}]',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.25f,0f],scale:[1f,1f,1f]}}
summon item ~ ~ ~ {Invulnerable:1b,PickupDelay:999s,Item:{id:"minecraft:stone",count:1},Tags:["Motion_Tumba","nuevo"]}
tag @s remove morido

scoreboard players operation #ine-tumba INESoldado = @s INESoldado
scoreboard players operation @n[type=interaction,tag=nuevo,tag=Cerebro_Tumba] INESoldado = #ine-tumba INESoldado

data modify entity @n[type=item_display,tag=Cabeza_Tumba,tag=nuevo] Rotation.[0] set from entity @s Rotation.[0]
execute as @n[tag=Cerebro_Tumba,tag=nuevo] run ride @n[type=item_display,tag=Pies_Tumba,tag=nuevo] mount @n[type=item,tag=Motion_Tumba,tag=nuevo]
execute as @n[tag=Cerebro_Tumba,tag=nuevo] run ride @n[type=item_display,tag=Cuerpo_Tumba,tag=nuevo] mount @n[type=item,tag=Motion_Tumba,tag=nuevo]
execute as @n[tag=Cerebro_Tumba,tag=nuevo] run ride @n[type=item_display,tag=Cabeza_Tumba,tag=nuevo] mount @n[type=item,tag=Motion_Tumba,tag=nuevo]
execute as @n[tag=Cerebro_Tumba,tag=nuevo] run ride @n[type=text_display,tag=Nombre_Tumba,tag=nuevo] mount @n[type=item,tag=Motion_Tumba,tag=nuevo]
execute as @n[tag=Cerebro_Tumba,tag=nuevo] run ride @s mount @n[type=item,tag=Motion_Tumba,tag=nuevo]
execute as @n[tag=Cerebro_Tumba,tag=nuevo] on passengers run tag @s remove nuevo
execute as @n[tag=Cerebro_Tumba,tag=nuevo] run tag @s remove nuevo

execute as @s[tag=entregar_diamante] run scoreboard players operation @s ZombieShop += @s RegistrarDiamante
execute as @s[tag=entregar_diamante] run clear @s diamond
execute as @s[tag=!entregar_diamante] run scoreboard players operation @s ZombieShop_Base = @s ZombieShop
scoreboard players reset @s ZombieShop
playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@s"}],"bold":true,"color":"dark_red"},{"text":" ha caido, necesita resucitacion","bold":false,"color":"dark_gray"}]
title @s times 20 100 20
title @s subtitle [{"text":""},{"text":"A ","bold":true,"color":"dark_red"},{"text":"l","bold":true,"color":"#b60303"},{"text":"a ","bold":true,"color":"#af0707"},{"text":"e","bold":true,"color":"#a80a0a"},{"text":"s","bold":true,"color":"#a00e0e"},{"text":"p","bold":true,"color":"#991212"},{"text":"e","bold":true,"color":"#921515"},{"text":"r","bold":true,"color":"#8b1919"},{"text":"a ","bold":true,"color":"#831c1c"},{"text":"d","bold":true,"color":"#7c2020"},{"text":"e ","bold":true,"color":"#752424"},{"text":"q","bold":true,"color":"#6e2727"},{"text":"u","bold":true,"color":"#662b2b"},{"text":"e ","bold":true,"color":"#5f2e2e"},{"text":"u","bold":true,"color":"#583232"},{"text":"n ","bold":true,"color":"#513636"},{"text":"b","bold":true,"color":"#493939"},{"text":"ue","bold":true,"color":"#423d3d"},{"text":"n ","bold":true,"color":"#493939"},{"text":"a","bold":true,"color":"#513636"},{"text":"l","bold":true,"color":"#583232"},{"text":"i","bold":true,"color":"#5f2e2e"},{"text":"a","bold":true,"color":"#662b2b"},{"text":"d","bold":true,"color":"#6e2727"},{"text":"o ","bold":true,"color":"#752424"},{"text":"t","bold":true,"color":"#7c2020"},{"text":"e ","bold":true,"color":"#831c1c"},{"text":"r","bold":true,"color":"#8b1919"},{"text":"e","bold":true,"color":"#921515"},{"text":"s","bold":true,"color":"#991212"},{"text":"u","bold":true,"color":"#a00e0e"},{"text":"c","bold":true,"color":"#a80a0a"},{"text":"i","bold":true,"color":"#af0707"},{"text":"t","bold":true,"color":"#b60303"},{"text":"e","bold":true,"color":"dark_red"}]
title @s title [{"text":""},{"text":"H","bold":true,"color":"dark_gray"},{"text":"A","bold":true,"color":"#632d2d"},{"text":"S ","bold":true,"color":"#871b1b"},{"text":"C","bold":true,"color":"#ab0909"},{"text":"A","bold":true,"color":"#ab0808"},{"text":"I","bold":true,"color":"#871b1b"},{"text":"D","bold":true,"color":"#632c2c"},{"text":"O","bold":true,"color":"dark_gray"}]
tag @s remove morido
tag @s add espectador
scoreboard players remove #jugadores-vivos Conteo 1