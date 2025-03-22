function kitpvp:kits/ine-soldado
team join Supervivientes @s
summon interaction ~ ~ ~ {height:.5f,width:1f,Tags:["Cerebro_Torreta","nuevo"]}
summon item_display ~ ~1.75 ~ {item:{id:"minecraft:observer",count:1b},Tags:["Cabeza_Torreta","nuevo"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon item_display ~ ~.8 ~ {item:{id:"minecraft:stone_brick_wall",count:1b},Tags:["Cuerpo_Torreta","nuevo"],teleport_duration:1,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon item_display ~ ~.5 ~ {item:{id:"minecraft:deepslate_tile_slab",count:1b},Tags:["Pies_Torreta","nuevo"],teleport_duration:1,teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}

scoreboard players operation @n[type=item_display,tag=Cabeza_Torreta,tag=nuevo] INESoldado = @s INESoldado
scoreboard players operation @n[type=item_display,tag=Cuerpo_Torreta,tag=nuevo] INESoldado = @s INESoldado
scoreboard players operation @n[type=item_display,tag=Pies_Torreta,tag=nuevo] INESoldado = @s INESoldado
scoreboard players operation @n[type=interaction,tag=Cerebro_Torreta,tag=nuevo] INESoldado = @s INESoldado

execute rotated as @s run rotate @n[type=item_display,tag=Cabeza_Torreta,tag=nuevo] ~ ~
execute rotated as @s run rotate @n[type=item_display,tag=Cuerpo_Torreta,tag=nuevo] ~ ~
ride @s mount @n[type=interaction,tag=Cerebro_Torreta,tag=nuevo]

playsound item.trident.return master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 0
playsound item.crossbow.loading_end master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 0
playsound item.crossbow.loading_end master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 1
playsound item.crossbow.loading_end master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 2

tag @n[type=item_display,tag=Cabeza_Torreta,tag=nuevo] remove nuevo
tag @n[type=item_display,tag=Cuerpo_Torreta,tag=nuevo] remove nuevo
tag @n[type=item_display,tag=Pies_Torreta,tag=nuevo] remove nuevo
tag @n[type=item_display,tag=Cerebro_Torreta,tag=nuevo] remove nuevo

tag @s add activado