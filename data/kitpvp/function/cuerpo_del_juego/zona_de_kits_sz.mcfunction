tag @s add espectador
gamemode spectator @s
effect clear @s
effect give @s saturation infinite 10 true
effect give @s resistance infinite 4 true
xp set @s 0 levels
xp set @s 0 points
clear @s
scoreboard players reset @s Reaparecer
playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@s"}],"bold":true,"color":"dark_red"},{"text":" nos ha abandonado","bold":false,"color":"dark_gray"}]
tag @s remove Jugador_Vivo
tag @s remove s-z-afavor
scoreboard players reset @s Desactivando
tag @s add zona_de_kits