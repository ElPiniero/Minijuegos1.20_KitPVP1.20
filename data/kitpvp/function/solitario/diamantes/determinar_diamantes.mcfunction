execute on attacker if entity @s[type=#kitpvp:tridente] unless data storage supervivencia-zombis {Horda:"5"} store result bossbar lvl1 value run scoreboard players add #supervivencia-zombis ZombieBuff 1
execute on attacker run scoreboard players add @s B_T_Zombis 1

scoreboard players set #division Conteo 2
scoreboard players set #botin-zombis Conteo 1
execute as @s[tag=jefes] run scoreboard players set #botin-zombis Conteo 9
execute as @a[tag=!sesion_no_iniciada,gamemode=adventure] run scoreboard players add #botin-zombis Conteo 1
scoreboard players operation #botin-zombis Conteo /= #division Conteo
execute as @s[tag=inflado] run scoreboard players add #botin-zombis Conteo 10

execute unless score #supervivencia-zombis ZombieBuff matches 1900.. on attacker if entity @s[type=player] run scoreboard players operation @s RegistrarDiamante += #botin-zombis Conteo
execute unless score #supervivencia-zombis ZombieBuff matches 1900.. on attacker if entity @s[type=!player] run scoreboard players operation @p[gamemode=adventure,tag=!sesion_no_iniciada] RegistrarDiamante += #botin-zombis Conteo

data modify entity @s Health set value 1
execute at @s on attacker run damage @n[type=#zombies] 100 generic by @s
damage @s 100 generic by @s