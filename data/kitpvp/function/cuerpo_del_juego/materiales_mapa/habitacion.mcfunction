scoreboard players add #ambiente-habitacion Conteo 1
execute if score #ambiente-habitacion Conteo matches 1 run playsound ambient.crimson_forest.additions master @a[tag=!sesion_no_iniciada] -112 125 192 9 1
execute if score #ambiente-habitacion Conteo matches 120.. run scoreboard players reset #ambiente-habitacion Conteo

execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~ ~ #kitpvp:limites run tp @s -112 125 192
execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~1 ~ #kitpvp:limites run tp @s -112 125 192