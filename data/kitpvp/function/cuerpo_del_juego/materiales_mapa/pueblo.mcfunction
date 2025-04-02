scoreboard players add #ambiente-pueblo Conteo 1
execute if score #ambiente-pueblo Conteo matches 1 run playsound ambient.nether_wastes.additions master @a[tag=!sesion_no_iniciada] -56 71 -24 14 1
execute if score #ambiente-pueblo Conteo matches 60.. run scoreboard players reset #ambiente-pueblo Conteo

execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~ ~ #kitpvp:limites run tp @s -56 71 -24
execute as @a[tag=!sesion_no_iniciada,gamemode=spectator,tag=espectador] at @s if block ~ ~1 ~ #kitpvp:limites run tp @s -56 71 -24