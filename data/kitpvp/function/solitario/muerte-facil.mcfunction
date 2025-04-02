gamemode spectator @s
scoreboard players remove @s bajas_jugador 1
tag @s remove Jugador_Vivo
tag @s add espectador
playsound ambient.cave master @a[tag=!sesion_no_iniciada] ~ ~ ~ 100 0 1
execute if data storage supervivencia-zombis {Horda:"5"} run tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@s"}],"bold":true,"color":"dark_red"},{"text":" ah caido","bold":false,"color":"dark_gray"}]
execute if data storage supervivencia-zombis {Horda:"5"} run return fail

tellraw @a[tag=!sesion_no_iniciada] [{"text":"","extra":[{"selector":"@s"}],"bold":true,"color":"dark_red"},{"text":" ah caido, resucitara en 10 segundos","bold":false,"color":"dark_gray"}]
execute as @s[tag=entregar_diamante] run scoreboard players operation @s RegistrarDiamante += @s ZombieShop
execute as @s[tag=entregar_diamante] run clear @s diamond
execute as @s[tag=!entregar_diamante] run scoreboard players operation @s ZombieShop_Base = @s ZombieShop
scoreboard players reset @s ZombieShop
scoreboard players set @s Reaparecer 1