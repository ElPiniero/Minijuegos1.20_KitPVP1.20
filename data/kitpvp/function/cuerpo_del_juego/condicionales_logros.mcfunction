scoreboard players reset @a[advancements={kitpvp:kitpvp/pvp/polimata=true}] Polimata
execute as @s[scores={Racha_2_CDO=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_CDN=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_CDE=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Elite=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_1-8=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Poseidon=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Quetzal=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Enderman=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Doctor=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Faraon=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Militar=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Tecnico=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Nexo=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Creeper=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Zorro=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Sicario=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Stray=1}] run scoreboard players add @s Polimata 1
execute as @s[scores={Racha_2_Neon=1}] run scoreboard players add @s Polimata 1
execute as @a[scores={Polimata=18},advancements={kitpvp:kitpvp/pvp/polimata=false}] run advancement grant @s only kitpvp:kitpvp/pvp/polimata

execute as @a[tag=!sesion_no_iniciada] if score @s muertes_jugador matches 50.. if score @s BporM matches 200.. run advancement grant @s only kitpvp:kitpvp/pvp/200bm

execute as @a[tag=!sesion_no_iniciada] if score @s Esp_1-8 matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_1-8
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_CDE matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_cde
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_CDN matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_cdn
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_CDO matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_cdo
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Creeper matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_creeper
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Doctor matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_doctor
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Elite matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_elite
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Enderman matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_enderman
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Faraon matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_faraon
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Militar matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_militar
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Zorro matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_zorro
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Sicario matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_sicario
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Tecnico matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_tecnico
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Nexo matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_nexo
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Stray matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_stray
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Quetzal matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_quetzal
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Poseidon matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_poseidon
execute as @a[tag=!sesion_no_iniciada] if score @s Esp_Neon matches 150 run advancement grant @s only kitpvp:kitpvp/pvp/especialista_neon