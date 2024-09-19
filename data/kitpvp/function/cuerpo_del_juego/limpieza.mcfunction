kill @e[type=item]
execute as @e[tag=Cerebro_Torreta,type=interaction] at @s run fill ~ ~ ~ ~ ~ ~ air replace snow
stopsound @a[tag=!sesion_no_iniciada] master music_disc.far
setblock 10 231 140 air
setblock 9 231 140 light_gray_concrete
setblock -187 72 103 air
setblock 9 230 139 red_nether_bricks
setblock 9 230 140 red_nether_bricks
setblock 9 230 141 red_nether_bricks
setblock 10 230 139 air
setblock 10 230 140 air
setblock 10 230 141 air
setblock 9 230 139 red_nether_bricks
setblock 9 230 140 red_nether_bricks
setblock 9 230 141 red_nether_bricks
setblock 10 230 139 air
setblock 10 230 140 air
setblock 10 230 141 air
tag @a[tag=!sesion_no_iniciada] remove R-Recargar
tag @a[tag=!sesion_no_iniciada] remove NoRifleRecargado
tag @a[tag=!sesion_no_iniciada] remove E-Recargar
tag @a[tag=!sesion_no_iniciada] remove derrota
tag @a[tag=!sesion_no_iniciada] remove NoEscopetaRecargada
tag @a[tag=!sesion_no_iniciada] remove Cartucho
tag @a[tag=!sesion_no_iniciada] remove Escopeta
tag @a[tag=!sesion_no_iniciada] remove bienvenido
tag @a[tag=!sesion_no_iniciada] remove LanzadorBayaPicosa
tag @a[tag=!sesion_no_iniciada] remove Misil
tag @a[tag=!sesion_no_iniciada] remove cdn
tag @a[tag=!sesion_no_iniciada] remove fr
tag @a[tag=!sesion_no_iniciada] remove survival-normal
tag @a[tag=!sesion_no_iniciada] remove survival-facil
tag @a[tag=!sesion_no_iniciada] remove tridente_viaje
tag @a[tag=!sesion_no_iniciada] remove Elite
tag @a[tag=!sesion_no_iniciada] remove survival-dificil
tag @a[tag=!sesion_no_iniciada] remove dct
tag @a[tag=!sesion_no_iniciada] remove psd
tag @a[tag=!sesion_no_iniciada] remove survival-ejecutandose
tag @a[tag=!sesion_no_iniciada] remove ZBuff
tag @a[tag=!sesion_no_iniciada] remove Cumplido
tag @a[tag=!sesion_no_iniciada] remove Esperando_Resucitacion
tag @a[tag=!sesion_no_iniciada] remove Efecto
tag @a[tag=!sesion_no_iniciada] remove yanosabandono
tag @a[tag=!sesion_no_iniciada] remove supervivencia-z
tag @a[tag=!sesion_no_iniciada] remove R-Recargar
tag @a[tag=!sesion_no_iniciada] remove Recarga
tag @a[tag=!sesion_no_iniciada] remove E-Recargar
tag @a[tag=!sesion_no_iniciada] remove reinicio-afavor
tag @a[tag=!sesion_no_iniciada] remove s-z
tag @a[tag=!sesion_no_iniciada] remove Escuadrones
tag @a[tag=!sesion_no_iniciada] remove atinado
tag @a[tag=!sesion_no_iniciada] remove leatine
tag @a[tag=!sesion_no_iniciada] remove meatinaron
tag @a[tag=!sesion_no_iniciada] remove r-meatinaron
tag @a[tag=!sesion_no_iniciada] remove e-meatinaron
tag @a[tag=!sesion_no_iniciada] remove m-meatinaron
tag @a[tag=!sesion_no_iniciada] remove alto-meatinaron
tag @a[tag=!sesion_no_iniciada] remove en_votacion
tag @a[tag=!sesion_no_iniciada] remove ya_me_atacaron
tag @a[tag=!sesion_no_iniciada] remove espectador
tag @a[tag=!sesion_no_iniciada] remove derrotado
tag @a[tag=!sesion_no_iniciada] remove derrotado2
execute as @a[tag=!sesion_no_iniciada] run function kitpvp:kits/remover_tag
tag @a[tag=!sesion_no_iniciada] remove yamero-survival-z
tag @a[tag=!sesion_no_iniciada] remove medio-meatinaron
tag @a[tag=!sesion_no_iniciada] remove bajo-meatinaron
tag @a[tag=!sesion_no_iniciada] remove yasemurio
tag @a[tag=!sesion_no_iniciada] remove Jugador_Vivo
tag @a[tag=!sesion_no_iniciada] remove Congelador
tag @a[tag=!sesion_no_iniciada] remove Lg_austeridad
tag @a[tag=!sesion_no_iniciada] remove Jugador_Zombi
tag @a[tag=!sesion_no_iniciada] remove Jugador_Zombi_1
tag @a[tag=!sesion_no_iniciada] remove Jugador_Zombi_2
tag @a[tag=!sesion_no_iniciada] remove Escopeta
tag @a[tag=!sesion_no_iniciada] remove Unido_a_Sicario
tag @a[tag=!sesion_no_iniciada] remove Rifle
tag @a[tag=!sesion_no_iniciada] remove cuerno_activado
tag @a[tag=!sesion_no_iniciada] remove s-z-afavor
tag @a[tag=!sesion_no_iniciada] remove entregar_diamante
tag @a[tag=!sesion_no_iniciada] remove s-z-encontra
tag @a[tag=!sesion_no_iniciada] remove Misil
tag @a[tag=!sesion_no_iniciada] remove Recargado
tag @a[tag=!sesion_no_iniciada] remove sin_iniciar
tag @a[tag=!sesion_no_iniciada] remove supervivencia-z
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombieBuff
scoreboard players reset @a[tag=!sesion_no_iniciada] Disparo-Rifle
scoreboard players reset @a[tag=!sesion_no_iniciada] Disparo-Escopeta
scoreboard players reset @a[tag=!sesion_no_iniciada] ZombieShop
team remove Supervivientes
kill @e[type=snow_golem]
kill @e[type=skeleton]
kill @e[type=item_display]
kill @e[type=interaction]
kill @e[type=block_display]
kill @e[type=iron_golem]
kill @e[type=#zombies]
kill @e[type=item]
kill @e[type=text_display]
kill @e[type=vex]
data remove storage supervivencia-z Dificultad
data remove storage supervivencia-z Activado
data remove storage supervivencia-z Horda
data remove storage supervivencia-z Iniciado
scoreboard objectives remove Damage
scoreboard objectives remove AbsorbedDamage
scoreboard objectives remove Cohete
scoreboard objectives remove GappleON
scoreboard objectives remove EnGappleON
scoreboard objectives remove Potion
scoreboard objectives remove Shield
scoreboard objectives remove AgarrarDiamante
scoreboard objectives remove Encender_Creeper
scoreboard objectives remove Levitado
scoreboard objectives remove SuTe
scoreboard objectives remove Jugadores
scoreboard objectives remove Llamar_Escuadron
scoreboard objectives remove Proyectil_1
scoreboard objectives remove Muerte_por_Escuadron
scoreboard objectives remove Proyectil_2
scoreboard objectives remove Proyectil_3
scoreboard objectives remove Proyectil_4
scoreboard objectives remove Musica
scoreboard objectives remove Rastreador 
scoreboard objectives remove Proyectil_5
scoreboard objectives remove Proyectil_6
scoreboard objectives remove Chorus
scoreboard objectives remove Baja_Zombi
scoreboard objectives remove Estadisticas
scoreboard objectives remove Baja_Diamante
scoreboard objectives remove Reaparecer
scoreboard objectives remove GDS
scoreboard objectives remove Sandia
scoreboard objectives remove Muertes
scoreboard objectives remove Crossbow
scoreboard objectives remove BetaM
scoreboard objectives remove Totem
scoreboard objectives remove Disparo-Rifle
scoreboard objectives remove Animacion
scoreboard objectives remove Atraido_Tiempo
scoreboard objectives remove Disparo-Escopeta
scoreboard objectives remove Huevo
scoreboard objectives remove Pegar
scoreboard objectives remove Baya
scoreboard objectives remove ZombieBuff
scoreboard objectives remove Conteo_Racha
scoreboard objectives remove ZombieShop
scoreboard objectives remove Conteo
scoreboard objectives remove Limpieza
scoreboard objectives remove Atraido
scoreboard objectives remove Tridente_Viaje
scoreboard objectives remove Torreta
scoreboard objectives remove Recarga_Kit
scoreboard objectives remove ManzanaEncantada
scoreboard objectives remove Conteo_Torretas
scoreboard objectives remove Conteo_Golems
scoreboard objectives remove Enganchado
scoreboard objectives remove Conteo
scoreboard objectives remove Poseyendose
scoreboard objectives remove Racha
scoreboard objectives remove Bayabrillosa
scoreboard objectives remove Catalejo
scoreboard objectives remove Arco
scoreboard objectives remove Totems
scoreboard objectives remove Flecha
scoreboard objectives remove Llamando_Oleada
scoreboard objectives remove Bebida_Mandarina
scoreboard objectives remove Bebida_Fresa
scoreboard objectives remove Bebida_Durazno
scoreboard objectives remove Congelante
scoreboard objectives remove Golem
scoreboard objectives remove INESoldado
scoreboard objectives remove Recargar
scoreboard objectives remove Alcance-Bala
scoreboard objectives remove Carta
scoreboard objectives remove Vida
scoreboard objectives remove HP
scoreboard objectives remove Salto
scoreboard objectives remove Escopeta-cooldown
scoreboard objectives remove Desactivando
scoreboard objectives remove Conteo
scoreboard objectives remove Zombis
scoreboard objectives remove Tiempo
scoreboard objectives remove Operacion
scoreboard objectives remove ZombisInactivos
scoreboard objectives remove Z-S_EnContra
bossbar remove lvl1
team remove Sicarios_1
team remove Sicarios_2
team remove Sicarios_3
team remove Sicarios_4
team remove Sicarios_5
team remove Sicarios_6
team remove Sicarios_7
team remove Sicarios_8
team remove Sicarios_9
team remove Sicarios_10
team remove Sicarios_11
team remove Sicarios_12
team remove Sicarios_13
team remove Sicarios_14
team remove Sicarios_15
team remove Sicarios_16
team remove Sicarios_17
team remove Sicarios_18
team remove Sicarios_19
team remove Sicarios_20
function kitpvp:cuerpo_del_juego/materiales_mapa/oxxo/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/similares/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/imss/reinicio
function kitpvp:cuerpo_del_juego/materiales_mapa/super_sanchez/reinicio
data remove storage switch_soriana bloque
data remove storage modo_de_pvp Modo
schedule clear kitpvp:cuerpo_del_juego/musica/musica
schedule clear kitpvp:solitario/materiales_cortos
schedule clear kitpvp:solitario/hordas/horda_1
schedule clear kitpvp:solitario/hordas/horda_2
schedule clear kitpvp:solitario/hordas/horda_3
schedule clear kitpvp:solitario/hordas/horda_4
schedule clear kitpvp:solitario/hordas/horda_5
schedule clear kitpvp:solitario/trigger_tienda
schedule clear kitpvp:solitario/hordas/victoria/victoria
schedule clear kitpvp:solitario/hordas/derrota
schedule clear kitpvp:solitario/hordas/derrota
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_activar
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar
schedule clear kitpvp:solitario/hordas/emboscada
schedule clear kitpvp:solitario/hordas/emboscadores
schedule clear kitpvp:solitario/hordas/victoria/materiales
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/reinicio/conteo_activar