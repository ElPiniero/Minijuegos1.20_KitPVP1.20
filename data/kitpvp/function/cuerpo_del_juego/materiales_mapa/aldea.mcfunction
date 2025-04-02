scoreboard players add #ambiente-aldea Conteo 1
execute if score #ambiente-aldea Conteo matches 1 run playsound ambient.soul_sand_valley.additions master @a[tag=!sesion_no_iniciada] -320 110 -32 14 1
execute if score #ambiente-aldea Conteo matches 80.. run scoreboard players reset #ambiente-aldea Conteo

execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~ ~ #kitpvp:limites run tp @s -320 110 -32
execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~1 ~ #kitpvp:limites run tp @s -320 110 -32