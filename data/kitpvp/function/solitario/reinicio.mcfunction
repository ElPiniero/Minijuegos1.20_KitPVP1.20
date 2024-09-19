schedule clear kitpvp:solitario/hordas/derrota
schedule clear kitpvp:solitario/hordas/derrota
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/reinicio/conteo_activar
scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
scoreboard players reset #tiempo-s-z
scoreboard players reset #favor-s-z
tag @a[tag=!sesion_no_iniciada] remove reinicio-afavor
bossbar set lvl1 name {"text":"Agonia de Masas","italic":false,"color":"red"}
bossbar set lvl1 visible true
bossbar set lvl1 players @a[tag=elmenazotote]
title @a times 0 0 0
schedule clear kitpvp:solitario/hordas/derrota
schedule clear kitpvp:solitario/hordas/horda_1
schedule clear kitpvp:solitario/hordas/horda_2
schedule clear kitpvp:solitario/hordas/horda_3
schedule clear kitpvp:solitario/hordas/horda_4
schedule clear kitpvp:solitario/hordas/horda_5
schedule clear kitpvp:solitario/hordas/emboscadores
schedule clear kitpvp:solitario/hordas/trepadores
schedule clear kitpvp:solitario/hordas/derrota
schedule clear kitpvp:solitario/hordas/horda_1
schedule clear kitpvp:solitario/hordas/horda_2
schedule clear kitpvp:solitario/hordas/horda_3
schedule clear kitpvp:solitario/hordas/horda_4
schedule clear kitpvp:solitario/hordas/horda_5
schedule clear kitpvp:solitario/hordas/emboscadores
schedule clear kitpvp:solitario/hordas/trepadores
function kitpvp:cuerpo_del_juego/entidades-trampa
function kitpvp:cuerpo_del_juego/entidades-trampa
kill @e[type=#zombies]
kill @e[type=vex]
kill @e[type=iron_golem]
kill @e[type=snow_golem]
kill @e[type=block_display]
kill @e[type=item_display]
kill @e[type=text_display]
kill @e[type=interaction,tag=Cerebro_Torreta]
kill @e[type=interaction,tag=Cerebro_Tumba]
kill @e[type=interaction,tag=Nexo]
kill @e[type=item]
summon item_display 6.75 235 144.25 {item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-41256920,748503286,-1435766564,-1630486485],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWVhMGFhMzI1ZTg4NzJiYmVlNzZiOTM5MjU0MzRmODliMDc4OTI5MDkyZTkxMjc2ZjRjNmNkNTE2MDk5ZmMwMCJ9fX0="}]}}}}
summon text_display 6.75 235.25 144.25 {Rotation:[-140f,0f],alignment:"center",text:'[{"text":"¡I","color":"light_purple","bold": true},{"text":"n","color":"#ec50ec"},{"text":"f","color":"#db61db"},{"text":"o","color":"#c973c9"},{"text":"r","color":"#b884b8"},{"text":"m","color":"#a795a7"},{"text":"a","color":"#95a795"},{"text":"c","color":"#84b884"},{"text":"i","color":"#73c973"},{"text":"o","color":"#61db61"},{"text":"n","color":"#50ec50"},{"text":"!","color":"green"}]'}
summon text_display 6.75 235 144.25 {Rotation:[-140f,0f],alignment:"center",text:'[{"text":"[","color":"gold"},{"text":"C","color":"#db9b34"},{"text":"l","color":"#de9335"},{"text":"i","color":"#e18b36"},{"text":"c","color":"#e48437"},{"text":"k ","color":"#e77c38"},{"text":"d","color":"#ea7439"},{"text":"e","color":"#ec6d39"},{"text":"r","color":"#ef653a"},{"text":"e","color":"#f25d3b"},{"text":"c","color":"#f5563c"},{"text":"h","color":"#f84e3d"},{"text":"o","color":"#fb463e"},{"text":"]","color":"red"}]'}
tag @a[tag=!sesion_no_iniciada] remove R-Recargar
tag @a[tag=!sesion_no_iniciada] remove NoRifleRecargado
tag @a[tag=!sesion_no_iniciada] remove E-Recargar
tag @a[tag=!sesion_no_iniciada] remove derrota
tag @a[tag=!sesion_no_iniciada] remove NoEscopetaRecargada
tag @a[tag=!sesion_no_iniciada] remove Cartucho
tag @a[tag=!sesion_no_iniciada] remove Escopeta
tag @a[tag=!sesion_no_iniciada] remove bienvenido
tag @a[tag=!sesion_no_iniciada] remove Misil
tag @a[tag=!sesion_no_iniciada] remove tridente_viaje
tag @a[tag=!sesion_no_iniciada] remove Elite
tag @a[tag=!sesion_no_iniciada] remove dct
tag @a[tag=!sesion_no_iniciada] remove derrotado2
tag @a[tag=!sesion_no_iniciada] remove psd
tag @a[tag=!sesion_no_iniciada] remove survival-ejecutandose
tag @a[tag=!sesion_no_iniciada] remove ZBuff
tag @a[tag=!sesion_no_iniciada] remove Cumplido
tag @a[tag=!sesion_no_iniciada] remove Efecto
tag @a[tag=!sesion_no_iniciada] remove yanosabandono
tag @a[tag=!sesion_no_iniciada] remove R-Recargar
tag @a[tag=!sesion_no_iniciada] remove Recarga
tag @a[tag=!sesion_no_iniciada] remove E-Recargar
tag @a[tag=!sesion_no_iniciada] remove reinicio-afavor
tag @a[tag=!sesion_no_iniciada] remove s-z
tag @a[tag=!sesion_no_iniciada] remove atinado
tag @a[tag=!sesion_no_iniciada] remove Jugador_Zombi
tag @a[tag=!sesion_no_iniciada] remove leatine
tag @a[tag=!sesion_no_iniciada] remove meatinaron
tag @a[tag=!sesion_no_iniciada] remove Jugador_Zombi_1
tag @a[tag=!sesion_no_iniciada] remove Jugador_Zombi_2
tag @a[tag=!sesion_no_iniciada] remove r-meatinaron
tag @a[tag=!sesion_no_iniciada] remove e-meatinaron
tag @a[tag=!sesion_no_iniciada] remove m-meatinaron
tag @a[tag=!sesion_no_iniciada] remove Congelador
tag @a[tag=!sesion_no_iniciada] remove Escuadrones
tag @a[tag=!sesion_no_iniciada] remove entregar_diamante
tag @a[tag=!sesion_no_iniciada] remove ya_me_atacaron
tag @a[tag=!sesion_no_iniciada] remove Esperando_Resucitacion
tag @a[tag=!sesion_no_iniciada] remove Jugador_Vivo
tag @a[tag=!sesion_no_iniciada] remove alto-meatinaron
tag @a[tag=!sesion_no_iniciada] remove cuerno_activado
tag @a[tag=!sesion_no_iniciada] remove Unido_a_Sicario
tag @a[tag=!sesion_no_iniciada] remove en_votacion
tag @a[tag=!sesion_no_iniciada] remove espectador
tag @a[tag=!sesion_no_iniciada] remove derrotado
execute as @a[tag=!sesion_no_iniciada] run function kitpvp:kits/remover_tag
tag @a[tag=!sesion_no_iniciada] remove yamero-survival-z
tag @a[tag=!sesion_no_iniciada] remove medio-meatinaron
tag @a[tag=!sesion_no_iniciada] remove bajo-meatinaron
tag @a[tag=!sesion_no_iniciada] remove yasemurio
tag @a[tag=!sesion_no_iniciada] remove Escopeta
tag @a[tag=!sesion_no_iniciada] remove Rifle
tag @a[tag=!sesion_no_iniciada] remove lg_austeridad
tag @a[tag=!sesion_no_iniciada] remove s-z-afavor
tag @a[tag=!sesion_no_iniciada] remove s-z-encontra
tag @a[tag=!sesion_no_iniciada] remove Misil
tag @a[tag=!sesion_no_iniciada] remove Recargado
tag @a[tag=!sesion_no_iniciada] remove sin_iniciar
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombieBuff
scoreboard players reset @a[tag=!sesion_no_iniciada] Disparo-Rifle
scoreboard players reset @a[tag=!sesion_no_iniciada] Disparo-Escopeta
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombieShop
scoreboard players reset @a[tag=!sesion_no_iniciada] Damage
scoreboard players reset @a[tag=!sesion_no_iniciada] AbsorbedDamage
scoreboard players reset @a[tag=!sesion_no_iniciada] GappleON
scoreboard players reset @a[tag=!sesion_no_iniciada] EnGappleON
scoreboard players reset @a[tag=!sesion_no_iniciada] Cohete
scoreboard players reset @a[tag=!sesion_no_iniciada] Potion
scoreboard players reset @a[tag=!sesion_no_iniciada] Shield
scoreboard players reset @a[tag=!sesion_no_iniciada] Conteo_Racha
scoreboard players reset @a[tag=!sesion_no_iniciada] Llamar_Escuadron
scoreboard players reset @a[tag=!sesion_no_iniciada] SuTe
scoreboard players reset @a[tag=!sesion_no_iniciada] Huevo
scoreboard players reset @a[tag=!sesion_no_iniciada] Jugadores
scoreboard players reset @a[tag=!sesion_no_iniciada] Proyectil_1
scoreboard players reset @a[tag=!sesion_no_iniciada] Proyectil_2
scoreboard players reset @a[tag=!sesion_no_iniciada] Proyectil_3
scoreboard players reset @a[tag=!sesion_no_iniciada] Pegar
scoreboard players reset @a[tag=!sesion_no_iniciada] Proyectil_4
scoreboard players reset @a[tag=!sesion_no_iniciada] Muerte_por_Escuadron
scoreboard players reset @a[tag=!sesion_no_iniciada] Proyectil_5
scoreboard players reset @a[tag=!sesion_no_iniciada] Baya
scoreboard players reset @a[tag=!sesion_no_iniciada] Proyectil_6
scoreboard players reset @a[tag=!sesion_no_iniciada] Chorus
scoreboard players reset @a[tag=!sesion_no_iniciada] Reaparecer
scoreboard players reset @a[tag=!sesion_no_iniciada] GDS
scoreboard players reset @a[tag=!sesion_no_iniciada] Muertes
scoreboard players reset @a[tag=!sesion_no_iniciada] Crossbow
scoreboard players reset @a[tag=!sesion_no_iniciada] BetaM
scoreboard players reset @a[tag=!sesion_no_iniciada] Totem
scoreboard players reset @a[tag=!sesion_no_iniciada] Disparo-Rifle
scoreboard players reset @a[tag=!sesion_no_iniciada] Disparo-Escopeta
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombieBuff
scoreboard players reset @a[tag=!sesion_no_iniciada] RegistrarDiamante
scoreboard players reset @a[tag=!sesion_no_iniciada] AgarrarDiamante
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombieShop
scoreboard players reset @a[tag=!sesion_no_iniciada] Conteo
scoreboard players reset @a[tag=!sesion_no_iniciada] Limpieza
scoreboard players reset @a[tag=!sesion_no_iniciada] Tridente_Viaje
scoreboard players reset @a[tag=!sesion_no_iniciada] Llamando_Oleada
scoreboard players reset @a[tag=!sesion_no_iniciada] Torreta
scoreboard players reset @a[tag=!sesion_no_iniciada] Encender_Creeper
scoreboard players reset @a[tag=!sesion_no_iniciada] Recarga_Kit
scoreboard players reset @a[tag=!sesion_no_iniciada] Sandia
scoreboard players reset @a[tag=!sesion_no_iniciada] ManzanaEncantada
scoreboard players reset @a[tag=!sesion_no_iniciada] Racha
scoreboard players reset @a[tag=!sesion_no_iniciada] Totems
scoreboard players reset @a[tag=!sesion_no_iniciada] Flecha
scoreboard players reset @a[tag=!sesion_no_iniciada] Bebida_Mandarina
scoreboard players reset @a[tag=!sesion_no_iniciada] Bebida_Fresa
scoreboard players reset @a[tag=!sesion_no_iniciada] Bebida_Durazno
scoreboard players reset @a[tag=!sesion_no_iniciada] Congelante
scoreboard players reset @a[tag=!sesion_no_iniciada] Poseyendose
scoreboard players reset @a[tag=!sesion_no_iniciada] Golem
scoreboard players reset @a[tag=!sesion_no_iniciada] Recargar
scoreboard players reset @a[tag=!sesion_no_iniciada] Alcance-Bala
scoreboard players reset @a[tag=!sesion_no_iniciada] Carta
scoreboard players reset @a[tag=!sesion_no_iniciada] HP
scoreboard players reset @a[tag=!sesion_no_iniciada] Salto
scoreboard players reset @a[tag=!sesion_no_iniciada] Escopeta-cooldown
scoreboard players reset @a[tag=!sesion_no_iniciada] Desactivando
scoreboard players reset @a[tag=!sesion_no_iniciada] Conteo
scoreboard players reset @a[tag=!sesion_no_iniciada] Zombis
scoreboard players reset @a[tag=!sesion_no_iniciada] Tiempo
scoreboard players reset @a[tag=!sesion_no_iniciada] Operacion
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombisInactivos
scoreboard players reset @a[tag=!sesion_no_iniciada] Z-S_EnContra
setblock 9 230 139 light_gray_concrete
setblock 9 230 140 light_gray_concrete
scoreboard players reset #supervivencia-zombis ZombieBuff
data merge storage supervivencia-zombis {Horda:"sin_iniciar"}
data merge storage supervivencia-zombis {Iniciado:0b}
setblock 9 230 141 light_gray_concrete
setblock 9 231 140 lime_concrete
setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/kitpvp_survival-z_no"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}
execute if data storage supervivencia-zombis {Dificultad:"facil"} run function kitpvp:cuerpo_del_juego/carteles/facil
execute if data storage supervivencia-zombis {Dificultad:"normal"} run function kitpvp:cuerpo_del_juego/carteles/normal
execute if data storage supervivencia-zombis {Dificultad:"dificil"} run function kitpvp:cuerpo_del_juego/carteles/dificil
gamemode adventure @a[tag=!sesion_no_iniciada]
effect clear @a[tag=!sesion_no_iniciada]
team leave @a[tag=!sesion_no_iniciada]
team join Supervivientes @a[tag=supervivencia-z]
tp @a[tag=!sesion_no_iniciada] 14 231 140 -90 1
tag @a[tag=!sesion_no_iniciada] add zona_de_kits
effect give @a[tag=!sesion_no_iniciada] saturation infinite 10 true
effect give @a[tag=!sesion_no_iniciada] resistance infinite 4 true
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombieShop
scoreboard players reset @a[tag=!sesion_no_iniciada] Racha
scoreboard players reset @a[tag=!sesion_no_iniciada] Bajas
scoreboard players set @a[tag=!sesion_no_iniciada] Conteo_Racha 2
xp set @a[tag=!sesion_no_iniciada] 0 levels
xp set @a[tag=!sesion_no_iniciada] 0 points
clear @a[tag=!sesion_no_iniciada]
scoreboard players reset #jugadores-vivos Conteo
execute as @a[tag=!sesion_no_iniciada,gamemode=!spectator] run scoreboard players add #jugadores-vivos Conteo 1
tag @a[tag=!sesion_no_iniciada] add zona_de_kits