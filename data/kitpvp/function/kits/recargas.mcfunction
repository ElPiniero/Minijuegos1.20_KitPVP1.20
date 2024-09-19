execute as @s[tag=CaDeOv] run function kitpvp:kits/caballero_del_overworld/recarga
execute as @s[tag=CaDeNe] run function kitpvp:kits/caballero_del_nether/recarga
execute as @s[tag=CaDeEn] run function kitpvp:kits/caballero_del_end/recarga
execute as @s[tag=Elite] run function kitpvp:kits/elite/recarga
execute as @s[tag=1.8] run function kitpvp:kits/1.8/recarga
execute as @s[tag=Poseidon] run function kitpvp:kits/poseidon/recarga
execute as @s[tag=Quetzal] run function kitpvp:kits/quetzal/recarga
execute as @s[tag=Enderman] run function kitpvp:kits/enderman/recarga
execute as @s[tag=Doctor] run function kitpvp:kits/doctor/recarga
execute as @s[tag=Faraon] run function kitpvp:kits/faraon/recarga
execute as @s[tag=Militar] run function kitpvp:kits/militar/recarga
execute as @s[tag=Tecnico] run function kitpvp:kits/tecnico/recarga
execute as @s[tag=Nexo] run function kitpvp:kits/nexo/recarga
execute as @s[tag=Creeper] run function kitpvp:kits/creeper/recarga
execute as @s[tag=Zorro] run function kitpvp:kits/zorro/recarga
execute as @s[tag=Sicario] run function kitpvp:kits/sicario/recarga
execute as @s[tag=Stray] run function kitpvp:kits/stray/recarga
execute as @s[tag=Neon] run function kitpvp:kits/neon/recarga

execute as @s[tag=CaDeOv] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_CDO 1
execute as @s[tag=CaDeNe] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_CDN 1
execute as @s[tag=CaDeEn] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_CDE 1
execute as @s[tag=Elite] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Elite 1
execute as @s[tag=1.8] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_1-8 1
execute as @s[tag=Poseidon] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Poseidon 1
execute as @s[tag=Quetzal] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Quetzal 1
execute as @s[tag=Enderman] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Enderman 1
execute as @s[tag=Doctor] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Doctor 1
execute as @s[tag=Faraon] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Faraon 1
execute as @s[tag=Militar] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Militar 1
execute as @s[tag=Tecnico] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Tecnico 1
execute as @s[tag=Nexo] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Nexo 1
execute as @s[tag=Creeper] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Creeper 1
execute as @s[tag=Zorro] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Zorro 1
execute as @s[tag=Sicario] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Sicario 1
execute as @s[tag=Stray] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Stray 1
execute as @s[tag=Neon] if score @s Bajas matches 2 run scoreboard players set @s Racha_2_Neon 1

execute as @a[tag=!sesion_no_iniciada] if score @s Racha > @s Racha_mas_Alta run scoreboard players operation @s Racha_mas_Alta = @s Racha
execute if score @s Racha matches 2 run advancement grant @s only kitpvp:kitpvp/pvp/2_bajas
execute if score @s Racha matches 20 run advancement grant @s only kitpvp:kitpvp/pvp/20_bajas
execute if score @s Racha matches 42 run advancement grant @s only kitpvp:kitpvp/pvp/42_bajas
scoreboard players operation @s Conteo_Racha = @s Bajas
scoreboard players add @s Conteo_Racha 2
scoreboard players reset @s Bajas