#execute as @n[type=#zombies,tag=!lider-ola] run function kitpvp:cuerpo_del_juego/tag_muerte
#summon interaction ~ ~ ~ {Tags:["Vector_oleada","nuevo"]}
#summon endermite ~ ~ ~ {Tags:["Guia_oleada","nuevo"],Silent:1b,PersistenceRequired:1b}
#summon zombie_villager ~ ~ ~ {Team:"Zombis",Tags:["nuevo","lider-ola"],PersistenceRequired:1b,Health:520f,attributes:[{id:"minecraft:follow_range",base:500},{id:"minecraft:max_health",base:520},{id:"minecraft:movement_speed",base:0.42}]}
#
#effect give @n[type=endermite,tag=Guia_oleada,tag=nuevo] resistance infinite 4 true
#effect give @n[type=endermite,tag=Guia_oleada,tag=nuevo] weakness infinite 4 true
#effect give @n[type=endermite,tag=Guia_oleada,tag=nuevo] invisibility infinite 0 true
#ride @n[type=endermite,tag=Guia_oleada,tag=nuevo] mount @n[type=interaction,tag=Vector_oleada,tag=nuevo]
#ride @n[type=interaction,tag=Vector_oleada,tag=nuevo] mount @n[type=zombie_villager,tag=lider-ola,tag=nuevo]
#schedule function kitpvp:solitario/hordas/oleada/activar_oleada 1s

execute positioned ~1 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~2 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~3 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~1 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~2 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~3 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~-1 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~-2 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~-3 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~-1 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~-2 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~-3 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~1 ~ ~1 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~2 ~ ~2 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~3 ~ ~3 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~1 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~1 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~1 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~2 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~2 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~2 run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~3 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~3 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~3 ~ ~ run function kitpvp:solitario/hordas/invocar_zombis
execute positioned ~ ~ ~ run function kitpvp:solitario/hordas/invocar_zombis