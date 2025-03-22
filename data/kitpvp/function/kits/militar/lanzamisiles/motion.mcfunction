execute store result score #motion_x_1 Conteo run data get entity @s Pos.[0] 10000
execute store result score #motion_y_1 Conteo run data get entity @s Pos.[1] 10000
execute store result score #motion_z_1 Conteo run data get entity @s Pos.[2] 10000

summon interaction ^ ^ ^.1 {Tags:["avance_bots"]}

execute store result score #motion_x_2 Conteo run data get entity @n[type=interaction,tag=avance_bots] Pos.[0] 10000
execute store result score #motion_y_2 Conteo run data get entity @n[type=interaction,tag=avance_bots] Pos.[1] 10000
execute store result score #motion_z_2 Conteo run data get entity @n[type=interaction,tag=avance_bots] Pos.[2] 10000

kill @n[type=interaction,tag=avance_bots]

execute store result storage flecha Datos.mx double 0.002 run scoreboard players operation #motion_x_2 Conteo -= #motion_x_1 Conteo
execute store result storage flecha Datos.my double 0.002 run scoreboard players operation #motion_y_2 Conteo -= #motion_y_1 Conteo
execute store result storage flecha Datos.mz double 0.002 run scoreboard players operation #motion_z_2 Conteo -= #motion_z_1 Conteo
