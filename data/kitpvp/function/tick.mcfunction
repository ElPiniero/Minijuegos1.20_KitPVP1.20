execute as @a[tag=!sesion_no_iniciada,tag=!Jugador_Zombi] at @s if score @s Bajas = @s Conteo_Racha run function kitpvp:kits/recargas
execute unless entity @a[tag=!sesion_no_iniciada,tag=survival-ejecutandose] as @e[type=item] at @s run data modify entity @s PickupDelay set value 0
execute unless entity @a[tag=!sesion_no_iniciada,tag=survival-ejecutandose] as @e[type=item] at @s run tp @s @p[gamemode=!spectator]
execute as @a[tag=Elite,scores={Shield=1..}] at @s on attacker run damage @s 7 thorns by @p[distance=..1] from @p[distance=..1]
execute as @a[tag=!sesion_no_iniciada,tag=1.8] at @s positioned ~ ~1 ~ if entity @e[type=fishing_bobber,sort=nearest,limit=1,distance=..1.5,tag=!caniazo] run function kitpvp:kits/1.8/materiales
execute as @a[tag=!sesion_no_iniciada,tag=1.8] at @s if entity @e[tag=caniazo,type=fishing_bobber] run function kitpvp:kits/1.8/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Poseidon] at @s run function kitpvp:kits/poseidon/trigger
execute as @a[tag=!sesion_no_iniciada,tag=Quetzal] at @s run function kitpvp:kits/quetzal/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Enderman] at @s run function kitpvp:kits/enderman/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Doctor] at @s run function kitpvp:kits/doctor/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Faraon] at @s run function kitpvp:kits/faraon/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Tecnico] at @s run function kitpvp:kits/tecnico/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Militar] at @s run function kitpvp:kits/militar/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Creeper] at @s run function kitpvp:kits/creeper/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Zorro] at @s run function kitpvp:kits/zorro/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Sicario] at @s run function kitpvp:kits/sicario/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Stray] at @s run function kitpvp:kits/stray/materiales
execute as @a[tag=!sesion_no_iniciada,tag=Neon] at @s run function kitpvp:kits/neon/materiales
function kitpvp:cuerpo_del_juego/cosmeticos
execute as @e[type=interaction,tag=M-Bala] at @s run function kitpvp:kits/militar/lanzamisiles/avance
execute as @e[type=interaction,tag=Nexo,tag=!activado] at @s run function kitpvp:kits/nexo/nexos/activacion
execute as @e[type=interaction,tag=Nexo,tag=activado] at @s unless entity @e[type=block_display,tag=nexo_prendido,sort=nearest,limit=1,distance=...9] on target if entity @s run function kitpvp:kits/nexo/nexos/carga
execute as @e[type=interaction,tag=Nexo,tag=activado] at @s if entity @e[type=block_display,tag=nexo_prendido,sort=nearest,limit=1,distance=...9] on target if entity @s run function kitpvp:kits/nexo/nexos/explosion
execute as @e[type=interaction,tag=Nexo,tag=activado] at @s on attacker if entity @s run function kitpvp:kits/nexo/nexos/remover
execute as @e[type=item_display,tag=BayaPicosa,tag=!yachoco] at @s run function kitpvp:kits/zorro/bayas_picosas/proyectil
execute as @e[type=item_display,tag=BayaPicosa,tag=yachoco] at @s run function kitpvp:kits/zorro/bayas_picosas/yachoco
execute as @e[type=block_display,tag=BayaAnimacion] at @s run function kitpvp:kits/zorro/bayas_picosas/animacion
execute as @e[type=skeleton,tag=Tropa_Escuadron] at @s if score @s Animacion matches 1.. run function kitpvp:kits/sicario/escuadrones/animacion
execute as @e[type=iron_golem,tag=Tropa_Escuadron] at @s if score @s Animacion matches 1.. run function kitpvp:kits/sicario/escuadrones/animacion
execute as @e[type=skeleton,tag=Tropa_Escuadron] at @s run function kitpvp:kits/sicario/escuadrones/materiales
execute as @a[scores={Atraido_Tiempo=1..},tag=enganchado] at @s run function kitpvp:kits/neon/tintas/enganchado
execute as @a[scores={Atraido=1..}] at @s run function kitpvp:kits/neon/tintas/atraido
execute as @e[type=#zombies,scores={Levitado=1..}] run function kitpvp:kits/neon/tintas/levitado
execute as @e[type=#zombies,nbt={active_effects:[{id:"minecraft:levitation",amplifier:-1b}]}] at @s run particle dust{color:[0.812,0.000,0.706],scale:1} ~ ~1 ~ .35 .5 .35 0 2 force
execute as @e[type=#zombies,nbt={active_effects:[{id:"minecraft:levitation",duration:1,amplifier:-1b}]}] run attribute @s generic.knockback_resistance base set 0
execute as @e[type=block_display,tag=Pastel,tag=disparado] at @s run function kitpvp:kits/neon/pastel/viaje
execute as @a[scores={Rastreador=1..}] at @s run function kitpvp:kits/rastreador/conteo
function kitpvp:solitario/sangre/sangriado
execute if entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run function kitpvp:solitario/materiales