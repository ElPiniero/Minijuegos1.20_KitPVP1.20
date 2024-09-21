execute if score @s ZombieShop matches ..7 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..7 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..7 run scoreboard players reset @s Bebida_Durazno

execute if score @s ZombieShop matches 8.. run give @s potion[max_stack_size=3,custom_name='[{"text":"Bebida de Durazno","italic":false,"color":"#ffae00"}]',potion_contents={custom_color:16756224,custom_effects:[{id:"minecraft:absorption",duration:9600,amplifier:19,show_particles:0b},{id:"minecraft:resistance",duration:200,amplifier:4}]}]
execute if score @s ZombieShop matches 8.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 8.. run clear @s diamond 8
execute if score @s ZombieShop matches 8.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 8.. run scoreboard players remove @s ZombieShop 8

scoreboard players remove @s Bebida_Durazno 1
scoreboard players reset @s[scores={Bebida_Durazno=..0}] Bebida_Durazno