execute if score @s ZombieShop matches ..3 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..3 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..3 run scoreboard players reset @s Bebida_Mandarina

execute if score @s ZombieShop matches 4.. run give @s potion[custom_name='[{"text":"Bebida de Mandarina","italic":false,"color":"#ff5f29"}]',potion_contents={custom_color:16736041,custom_effects:[{id:"minecraft:night_vision",duration:1200,amplifier:0,show_particles:0b},{id:"minecraft:regeneration",duration:1200,amplifier:4},{id:"minecraft:speed",duration:1200,amplifier:4,show_particles:0b}]}]
execute if score @s ZombieShop matches 4.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 4.. run clear @s diamond 4
execute if score @s ZombieShop matches 4.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 4.. run scoreboard players remove @s ZombieShop 4

scoreboard players remove @s Bebida_Mandarina 1
scoreboard players reset @s[scores={Bebida_Mandarina=..0}] Bebida_Mandarina