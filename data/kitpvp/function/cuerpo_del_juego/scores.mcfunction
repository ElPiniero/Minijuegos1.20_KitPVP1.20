scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
setblock 10 231 140 air
setblock 9 231 140 light_gray_concrete
setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/kitpvp_survival-z_si"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}
scoreboard objectives add Damage custom:damage_taken
scoreboard objectives add AbsorbedDamage custom:damage_absorbed
scoreboard objectives add GappleON used:golden_apple
scoreboard objectives add EnGappleON used:enchanted_golden_apple
scoreboard objectives add Potion used:potion
scoreboard objectives add Shield custom:damage_blocked_by_shield
scoreboard objectives add SuTe used:dried_kelp
scoreboard objectives add Chorus used:chorus_fruit
scoreboard objectives add GDS used:cookie
scoreboard objectives add Muertes deathCount
scoreboard objectives add BetaM used:beetroot
scoreboard objectives add Cohete used:firework_rocket
scoreboard objectives add Proyectil_1 dummy
scoreboard objectives add Proyectil_2 dummy
scoreboard objectives add Proyectil_3 dummy
scoreboard objectives add Proyectil_4 dummy
scoreboard objectives add Estadisticas trigger
scoreboard objectives add Poseyendose dummy
scoreboard objectives add Musica dummy
scoreboard objectives add Encender_Creeper dummy
scoreboard objectives add Proyectil_5 dummy
scoreboard objectives add Proyectil_6 dummy
scoreboard objectives add Sandia used:melon_slice
scoreboard objectives add Rastreador used:carrot_on_a_stick
scoreboard objectives add Llamando_Oleada used:warped_fungus_on_a_stick
scoreboard objectives add Racha playerKillCount
scoreboard objectives add Totem used:totem_of_undying
scoreboard objectives add ZombieBuff dummy
scoreboard objectives add Conteo dummy
scoreboard objectives add AgarrarDiamante picked_up:light_blue_concrete
scoreboard objectives add RegistrarDiamante dummy
scoreboard objectives add ZombieShop picked_up:diamond {"text": "*_Diamantes_*","color": "dark_aqua","bold": true,"italic": false}
scoreboard objectives add muertes_jugador playerKillCount {"text": "-=|ASESINATOS|=-","color": "red","bold": true,"italic": false}
scoreboard objectives setdisplay sidebar muertes_jugador
scoreboard objectives add ZombieShop_Base dummy
scoreboard objectives add bajas_jugador deathCount
scoreboard objectives add BporM dummy
scoreboard objectives add B_T_Zombis dummy
scoreboard objectives add Baja_Zombi killed:zombie_villager
scoreboard objectives add Baja_Diamante killed:drowned
scoreboard objectives add Reaparecer dummy
scoreboard objectives add Animacion dummy
scoreboard objectives add ZombieDecomizo dropped:diamond
scoreboard objectives add Tienda_Raro used:poisonous_potato
scoreboard objectives add Limpieza dummy
scoreboard objectives add Pegar custom:damage_dealt
scoreboard objectives add Huevo used:egg
scoreboard objectives add Baya used:sweet_berries
scoreboard objectives add Crossbow used:crossbow
scoreboard objectives add Disparo-Rifle dummy
scoreboard objectives add Municion_Rifle dummy
scoreboard objectives add Disparo-Escopeta dummy
scoreboard objectives add INESoldado dummy
scoreboard objectives add Recargar dummy
scoreboard objectives add Alcance-Bala dummy
scoreboard objectives add Conteo_Racha dummy
scoreboard objectives add joinGameKit dummy
scoreboard objectives add Tridente_Viaje used:trident
scoreboard objectives add Bajas playerKillCount
scoreboard objectives add Vida health
scoreboard objectives add Registro dummy
scoreboard objectives add Muerte_por_Escuadron killed_by:skeleton
scoreboard objectives add Llamar_Escuadron used:goat_horn
scoreboard objectives add HP dummy
scoreboard objectives add Racha_mas_Alta dummy
scoreboard objectives add Mejores_Diamantes dummy
scoreboard objectives add Carta used:written_book
scoreboard objectives add Salto custom:jump
scoreboard objectives add Escopeta-cooldown dummy

scoreboard objectives add LOGRO_gente_sofisticada dummy
scoreboard objectives add LOGRO_primer_kit dummy
scoreboard objectives add LOGRO_200bm dummy
scoreboard objectives add LOGRO_20_bajas dummy
scoreboard objectives add LOGRO_2_bajas dummy
scoreboard objectives add LOGRO_42_bajas dummy
scoreboard objectives add LOGRO_aguafiestas dummy
scoreboard objectives add LOGRO_y_todavia_no_me_muero dummy
scoreboard objectives add LOGRO_empoderio_aviario dummy
scoreboard objectives add LOGRO_en_toda_la_jeta dummy
scoreboard objectives add LOGRO_especialista_1-8 dummy
scoreboard objectives add LOGRO_especialista_cde dummy
scoreboard objectives add LOGRO_especialista_cdn dummy
scoreboard objectives add LOGRO_especialista_cdo dummy
scoreboard objectives add LOGRO_especialista_creeper dummy
scoreboard objectives add LOGRO_especialista_doctor dummy
scoreboard objectives add LOGRO_especialista_elite dummy
scoreboard objectives add LOGRO_especialista_enderman dummy
scoreboard objectives add LOGRO_especialista_faraon dummy
scoreboard objectives add LOGRO_especialista_militar dummy
scoreboard objectives add LOGRO_especialista_nexo dummy
scoreboard objectives add LOGRO_especialista_poseidon dummy
scoreboard objectives add LOGRO_especialista_quetzal dummy
scoreboard objectives add LOGRO_especialista_sicario dummy
scoreboard objectives add LOGRO_especialista_stray dummy
scoreboard objectives add LOGRO_especialista_tecnico dummy
scoreboard objectives add LOGRO_especialista_zorro dummy
scoreboard objectives add LOGRO_hola_adios dummy
scoreboard objectives add LOGRO_victorias_por_30_segundos dummy
scoreboard objectives add LOGRO_maldiciones dummy
scoreboard objectives add LOGRO_nexo_triples dummy
scoreboard objectives add LOGRO_los_buenos_tiros dummy
scoreboard objectives add LOGRO_ordene_emperador dummy
scoreboard objectives add LOGRO_pa_donde_lo_llevo dummy
scoreboard objectives add LOGRO_polimata dummy
scoreboard objectives add LOGRO_racha_6_cde dummy
scoreboard objectives add LOGRO_racha_6_cdn dummy
scoreboard objectives add LOGRO_racha_6_cdo dummy
scoreboard objectives add LOGRO_racha_6_doctor dummy
scoreboard objectives add LOGRO_racha_6_tecnico dummy
scoreboard objectives add LOGRO_racha_picosas dummy
scoreboard objectives add LOGRO_ofensiva_post-escudo dummy
scoreboard objectives add LOGRO_te_vas_conmigo dummy
scoreboard objectives add LOGRO_abranse dummy
scoreboard objectives add LOGRO_austeridad dummy
scoreboard objectives add LOGRO_cuarta_horda dummy
scoreboard objectives add LOGRO_juego_completo dummy
scoreboard objectives add LOGRO_quinta_horda dummy
scoreboard objectives add LOGRO_segunda_horda dummy
scoreboard objectives add LOGRO_tercera_horda dummy
scoreboard objectives add LOGRO_zombis dummy
scoreboard objectives add LOGRO_liquidez dummy
scoreboard objectives add LOGRO_buen_sueldo dummy
scoreboard objectives add LOGRO_carta dummy
scoreboard objectives add LOGRO_fortaleza dummy
scoreboard objectives add LOGRO_horda dummy
scoreboard objectives add LOGRO_me_siento_chido dummy
scoreboard objectives add LOGRO_cometorta dummy
scoreboard objectives add LOGRO_especialista_neon dummy
scoreboard objectives add LOGRO_austeridad_completa dummy

scoreboard objectives add Esp_1-8 dummy
scoreboard objectives add Esp_Doctor dummy
scoreboard objectives add Esp_Zorro dummy
scoreboard objectives add Esp_CDO dummy
scoreboard objectives add Esp_CDN dummy
scoreboard objectives add Esp_CDE dummy
scoreboard objectives add Esp_Elite dummy
scoreboard objectives add Esp_Poseidon dummy
scoreboard objectives add Esp_Nexo dummy
scoreboard objectives add Esp_Stray dummy
scoreboard objectives add Esp_Neon dummy
scoreboard objectives add Esp_Tecnico dummy
scoreboard objectives add Esp_Sicario dummy
scoreboard objectives add Esp_Militar dummy
scoreboard objectives add Esp_Faraon dummy
scoreboard objectives add Esp_Creeper dummy
scoreboard objectives add Esp_Enderman dummy
scoreboard objectives add Esp_Quetzal dummy

scoreboard objectives add Racha_2_1-8 dummy
scoreboard objectives add Racha_2_Doctor dummy
scoreboard objectives add Racha_2_Zorro dummy
scoreboard objectives add Racha_2_CDO dummy
scoreboard objectives add Racha_2_CDN dummy
scoreboard objectives add Racha_2_CDE dummy
scoreboard objectives add Racha_2_Elite dummy
scoreboard objectives add Racha_2_Poseidon dummy
scoreboard objectives add Racha_2_Nexo dummy
scoreboard objectives add Racha_2_Stray dummy
scoreboard objectives add Racha_2_Neon dummy
scoreboard objectives add Racha_2_Tecnico dummy
scoreboard objectives add Racha_2_Sicario dummy
scoreboard objectives add Racha_2_Militar dummy
scoreboard objectives add Racha_2_Faraon dummy
scoreboard objectives add Racha_2_Creeper dummy
scoreboard objectives add Racha_2_Enderman dummy
scoreboard objectives add Racha_2_Quetzal dummy

scoreboard objectives add Polimata dummy
scoreboard objectives add Conteo dummy
scoreboard objectives add Levitado dummy
scoreboard objectives add Conteo_Torretas dummy
scoreboard objectives add Conteo_Golems dummy
scoreboard objectives add Desactivando dummy
scoreboard objectives add Zombis dummy
scoreboard objectives add Jugadores dummy
scoreboard objectives add Mejores_Diamantes dummy
scoreboard objectives add Conteo dummy
scoreboard objectives add ZombisInactivos dummy
scoreboard objectives add Z-S_EnContra dummy
scoreboard objectives add Tiempo dummy
scoreboard objectives add Operacion dummy
scoreboard objectives add Bayabrillosa used:glow_berries
scoreboard objectives add Catalejo used:spyglass
scoreboard objectives add Arco used:bow
scoreboard objectives add Enganchado dummy
scoreboard objectives add Atraido dummy
scoreboard objectives add Atraido_Tiempo dummy
scoreboard objectives setdisplay below_name Vida
team add Supervivientes
team modify Supervivientes friendlyFire false
team add Zombis
team modify Zombis friendlyFire false
team add Sicarios_1
team modify Sicarios_1 friendlyFire false
team add Sicarios_2
team modify Sicarios_2 friendlyFire false
team add Sicarios_3
team modify Sicarios_3 friendlyFire false
team add Sicarios_4
team modify Sicarios_4 friendlyFire false
team add Sicarios_5
team modify Sicarios_5 friendlyFire false
team add Sicarios_6
team modify Sicarios_6 friendlyFire false
team add Sicarios_7
team modify Sicarios_7 friendlyFire false
team add Sicarios_8
team modify Sicarios_8 friendlyFire false
team add Sicarios_9
team modify Sicarios_9 friendlyFire false
team add Sicarios_10
team modify Sicarios_10 friendlyFire false
team add Sicarios_11
team modify Sicarios_11 friendlyFire false
team add Sicarios_12
team modify Sicarios_12 friendlyFire false
team add Sicarios_13
team modify Sicarios_13 friendlyFire false
team add Sicarios_14
team modify Sicarios_14 friendlyFire false
team add Sicarios_15
team modify Sicarios_15 friendlyFire false
team add Sicarios_16
team modify Sicarios_6 friendlyFire false
team add Sicarios_17
team modify Sicarios_17 friendlyFire false
team add Sicarios_18
team modify Sicarios_18 friendlyFire false
team add Sicarios_19
team modify Sicarios_19 friendlyFire false
team add Sicarios_20
team modify Sicarios_20 friendlyFire false
bossbar add lvl1 {"text": "elmen"}
bossbar set lvl1 style progress
bossbar set lvl1 max 5
bossbar set lvl1 value 1
bossbar set lvl1 color white
bossbar set lvl1 name {"text":"Agonia de Masas","italic":false,"color":"red"}
bossbar set lvl1 visible true
bossbar set lvl1 players @a[tag=!sesion_no_iniciada,tag=elmenazotote]
data merge storage supervivencia-zombis {Horda:"sin_iniciar"}
data merge storage supervivencia-zombis {Dificultad:"sin_iniciar"}
data merge storage supervivencia-zombis {Iniciado:0b}
data merge storage supervivencia-zombis {Activado:0b}
function kitpvp:cuerpo_del_juego/materiales_mapa/oxxo/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/similares/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/imss/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/super_sanchez/reinicio
summon interaction 14 230 133 {Tags:["P1.8"]}
summon interaction 21 230 137 {Tags:["CDE"]}
summon interaction 21 230 143 {Tags:["CDN"]}
summon interaction 21 230 140 {Tags:["CDO"]}
summon interaction 11 230 147 {Tags:["DCT"]}
summon interaction 17 230 133 {Tags:["EL"]}
summon interaction 14 230 147 {Tags:["EDM"]}
summon interaction 11 234 131 {Tags:["FR"]}
summon interaction 14 234 131 {Tags:["ML"]}
summon interaction 11 230 133 {Tags:["PSD"]}
summon interaction 17 230 147 {Tags:["QZ"]}
summon interaction 17 234 149 {Tags:["TEC"]}
summon interaction 14 234 149 {Tags:["NEXO"]}
summon interaction 17 234 131 {Tags:["CRP"]}
summon interaction 23 234 137 {Tags:["ZRR"]}
summon interaction 23 234 140 {Tags:["SCR"]}
summon interaction 11 234 149 {Tags:["STY"]}
summon interaction 23 234 143 {Tags:["NEON"]}
summon interaction -143 74 24 {Tags:["Spawn"]} 
summon interaction -154 67 -4 {Tags:["Spawn"]} 
summon interaction -129 85 -29 {Tags:["Spawn"]} 
summon interaction -146 77 -49 {Tags:["Spawn"]} 
summon interaction -59 84 -125 {Tags:["Spawn"]} 
summon interaction -105 84 -125 {Tags:["Spawn"]} 
summon interaction -45 87 -116 {Tags:["Spawn"]} 
summon interaction -9 84 -116 {Tags:["Spawn"]} 
summon interaction 27 74 8 {Tags:["Spawn"]} 
summon interaction 55 74 -57 {Tags:["Spawn"]} 
summon interaction -10 82 77 {Tags:["Spawn"]} 
summon interaction -103 82 77 {Tags:["Spawn"]} 
summon interaction -56 65 -44 {Tags:["Spawn"]} 
summon interaction -37 65 -24 {Tags:["Spawn"]} 
summon interaction -57 65 -5 {Tags:["Spawn"]} 
summon interaction -76 65 -25 {Tags:["Spawn"]} 