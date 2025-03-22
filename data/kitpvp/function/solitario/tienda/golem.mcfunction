execute if score @s ZombieShop matches ..15 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..15 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..15 run scoreboard players reset @s Golem

execute if score @s ZombieShop matches 16.. run give @s iron_golem_spawn_egg[can_place_on={predicates:[{blocks:"#kitpvp:colocables"}]},custom_name='[{"italic":false,"text":"Golem de "},{"color":"red","text":"Hierro"}]',entity_data={id:"minecraft:iron_golem",PersistenceRequired:1b,Health:300f,PlayerCreated:1b,active_effects:[{id:"minecraft:speed",amplifier:2,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:300}]}]
execute if score @s ZombieShop matches 16.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 16.. run clear @s diamond 16
execute if score @s ZombieShop matches 16.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 16.. run scoreboard players remove @s ZombieShop 16

scoreboard players remove @s Golem 1
scoreboard players reset @s[scores={Golem=..0}] Golem