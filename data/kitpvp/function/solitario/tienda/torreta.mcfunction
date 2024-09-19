execute if score @s ZombieShop matches ..15 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..15 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..15 run scoreboard players reset @s Torreta

execute if score @s ZombieShop matches 16.. run give @p snow_golem_spawn_egg[can_place_on={predicates:[{blocks:"#kitpvp:colocables"}]},custom_name='{"color":"red","italic":false,"text":"Torreta"}',entity_data={id:"minecraft:snow_golem",Silent:1b,DeathLootTable:"kitpvp:entities/zombi",PersistenceRequired:1b,Health:300f,Pumpkin:0b,Tags:["Torreta"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:generic.knockback_resistance",base:1},{id:"minecraft:generic.max_health",base:300}]}]
execute if score @s ZombieShop matches 16.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 16.. run clear @s diamond 16
execute if score @s ZombieShop matches 16.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 16.. run scoreboard players remove @s ZombieShop 16

scoreboard players remove @s Torreta 1
scoreboard players reset @s[scores={Torreta=..0}] Torreta