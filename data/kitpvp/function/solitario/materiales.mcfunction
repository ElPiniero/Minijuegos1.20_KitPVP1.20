execute as @a[tag=!sesion_no_iniciada,scores={Carta=1}] run function kitpvp:solitario/trigger_tienda
execute as @a[tag=!sesion_no_iniciada,scores={Torreta=1..}] at @s run function kitpvp:solitario/tienda/torreta
execute as @a[tag=!sesion_no_iniciada,scores={Recarga_Kit=1..}] at @s run function kitpvp:solitario/tienda/recarga_kit
execute as @a[tag=!sesion_no_iniciada,scores={ManzanaEncantada=1..}] at @s run function kitpvp:solitario/tienda/manzana_encantada
execute as @a[tag=!sesion_no_iniciada,scores={Totems=1..}] at @s run function kitpvp:solitario/tienda/totems
execute as @a[tag=!sesion_no_iniciada,scores={Flecha=1..}] at @s run function kitpvp:solitario/tienda/flecha
execute as @a[tag=!sesion_no_iniciada,scores={Bebida_Mandarina=1..}] at @s run function kitpvp:solitario/tienda/bebida_mandarina
execute as @a[tag=!sesion_no_iniciada,scores={Bebida_Fresa=1..}] at @s run function kitpvp:solitario/tienda/bebida_fresa
execute as @a[tag=!sesion_no_iniciada,scores={Bebida_Durazno=1..}] at @s run function kitpvp:solitario/tienda/bebida_durazno
execute as @a[tag=!sesion_no_iniciada,scores={Congelante=1..}] at @s run function kitpvp:solitario/tienda/congelante
execute as @a[tag=!sesion_no_iniciada,scores={Golem=1..}] at @s run function kitpvp:solitario/tienda/golem

execute as @e[type=#zombies,nbt={HurtTime:10s}] at @s run function kitpvp:solitario/sangre/trigger

function kitpvp:solitario/trigger_congelante
execute as @a[scores={Poseyendose=1..101}] at @s run function kitpvp:solitario/muerte-dificil_conteo
execute as @a[scores={Llamando_Oleada=1..101}] at @s run function kitpvp:solitario/llamando_oleada

execute as @a[tag=survival-facil,scores={Reaparecer=1..}] at @s run function kitpvp:solitario/muerte-facil_conteo

execute if entity @a[tag=survival-normal,tag=!sesion_no_iniciada] as @e[type=text_display,tag=Nombre_Tumba] at @s positioned ~ ~-1.25 ~ if score @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado positioned as @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1] run tp @s ~ ~1.25 ~
execute if entity @a[tag=survival-normal,tag=!sesion_no_iniciada] as @e[type=item_display,tag=Cabeza_Tumba] at @s positioned ~ ~-1 ~ if score @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado positioned as @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1] run tp @s ~ ~1 ~
execute if entity @a[tag=survival-normal,tag=!sesion_no_iniciada] as @e[type=item_display,tag=Cuerpo_Tumba] at @s if score @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado run tp @s @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1]
execute if entity @a[tag=survival-normal,tag=!sesion_no_iniciada] as @e[type=item_display,tag=Pies_Tumba] at @s positioned ~ ~1 ~ if score @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado positioned as @e[type=interaction,tag=Cerebro_Tumba,sort=nearest,limit=1,distance=..1] run tp @s ~ ~-1 ~
execute if entity @a[tag=survival-normal,tag=!sesion_no_iniciada] as @e[type=interaction,tag=Cerebro_Tumba,tag=!elevar] at @s if block ~ ~-.1 ~ #kitpvp:tumba run function kitpvp:solitario/colocar_tumbas
execute if entity @a[tag=survival-normal,tag=!sesion_no_iniciada] as @e[type=interaction,tag=Cerebro_Tumba] at @s if data entity @s interaction run function kitpvp:solitario/resucitado

execute if data storage supervivencia-zombis {Dificultad:"facil",Iniciado:1b} if data storage supervivencia-zombis {Horda:"5"} unless entity @a[tag=!sesion_no_iniciada,tag=Jugador_Vivo,gamemode=adventure] unless entity @a[tag=derrotado,tag=!sesion_no_iniciada] run schedule function kitpvp:solitario/hordas/derrota 6s
execute if data storage supervivencia-zombis {Dificultad:"facil",Iniciado:1b} if data storage supervivencia-zombis {Horda:"5"} unless entity @a[tag=!sesion_no_iniciada,tag=Jugador_Vivo,gamemode=adventure] unless entity @a[tag=derrotado,tag=!sesion_no_iniciada] run tag @a[tag=!sesion_no_iniciada] add derrotado
execute unless data storage supervivencia-zombis {Dificultad:"facil"} unless score #jugadores-vivos Conteo matches 1.. unless entity @a[tag=derrotado,tag=!sesion_no_iniciada] run schedule function kitpvp:solitario/hordas/derrota 6s
execute unless data storage supervivencia-zombis {Dificultad:"facil"} unless score #jugadores-vivos Conteo matches 1.. unless entity @a[tag=derrotado,tag=!sesion_no_iniciada] run tag @a[tag=!sesion_no_iniciada] add derrotado

execute as @e[type=#zombies] unless data entity @s DeathLootTable run data merge entity @s {DeathLootTable:"kitpvp:entities/zombi"}

execute as @e[type=trident,nbt=!{item:{components:{"minecraft:enchantments":{}}}}] run data modify entity @s damage set value 0
execute as @e[type=drowned,tag=jefes] at @s run tag @e[type=trident,nbt=!{item:{components:{"minecraft:enchantments":{}}}},sort=nearest,limit=1,distance=..2] add tridente_jefe
execute as @e[type=#kitpvp:tridente] at @s positioned ~ ~1 ~ if entity @e[type=trident,nbt=!{item:{components:{"minecraft:enchantments":{}}}},distance=..2.3,tag=!yaempalo] run function kitpvp:solitario/hordas/tridentes

execute as @e[tag=oleada-guia,type=vex] at @s run function kitpvp:solitario/hordas/oleada/oleada-guia
execute as @e[tag=m-oleada-guia,type=vex] at @s run function kitpvp:solitario/hordas/oleada/m-oleada-guia

execute as @e[type=#zombies] store result score @s ZombieBuff run data get entity @s Health
execute as @e[type=#zombies] if score @s ZombieBuff matches ..500 at @s run function kitpvp:solitario/diamantes/determinar_diamantes
execute as @a[tag=supervivencia-z,tag=!sesion_no_iniciada] at @s run function kitpvp:solitario/diamantes/summar_puntos
execute as @a[tag=Jugador_Zombi] at @s if score @s AgarrarDiamante matches 1.. run clear @s light_blue_concrete
execute as @a[tag=Jugador_Zombi] at @s if score @s AgarrarDiamante matches 1.. run scoreboard players reset @s AgarrarDiamante
execute as @e[type=item,nbt={Item:{id:"minecraft:light_blue_concrete"}}] at @s run tp @s @p[tag=Jugador_Vivo]
execute as @a[scores={AgarrarDiamante=1..},tag=!sesion_no_iniciada] run function kitpvp:solitario/diamantes/agarrando_diamantes
execute as @a[tag=entregar_diamante,tag=!sesion_no_iniciada,tag=Jugador_Vivo,tag=!espectador] run function kitpvp:solitario/diamantes/entregar_diamantes
execute as @a[tag=!sesion_no_iniciada,scores={ZombieDecomizo=1..}] at @s positioned ~ ~1 ~ run function kitpvp:solitario/diamantes/soltando_diamantes

execute as @e[tag=trepador,type=#zombies] at @s run function kitpvp:solitario/hordas/trepadores

execute as @e[tag=Torreta,type=snow_golem] at @s run function kitpvp:solitario/tienda/torreta/materiales
execute as @e[tag=Cerebro_Torreta,type=interaction] at @s unless entity @e[tag=Torreta,distance=...9,type=snow_golem] run function kitpvp:solitario/tienda/torreta/desactivacion