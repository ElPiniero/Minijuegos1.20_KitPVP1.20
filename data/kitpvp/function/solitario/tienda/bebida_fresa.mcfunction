execute if score @s ZombieShop matches ..5 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..5 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..5 run scoreboard players reset @s Bebida_Fresa

execute if score @s ZombieShop matches 6.. run give @s potion[custom_name='[{"text":"Bebida de Fresa","italic":false,"color":"#ff0011"}]',potion_contents={custom_color:16711697,custom_effects:[{id:"minecraft:haste",duration:400,amplifier:127,show_particles:1b},{id:"minecraft:strength",duration:400,amplifier:25,show_particles:1b}]}]
execute if score @s ZombieShop matches 6.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 6.. run clear @s diamond 6
execute if score @s ZombieShop matches 6.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 6.. run scoreboard players remove @s ZombieShop 6

scoreboard players remove @s Bebida_Fresa 1
scoreboard players reset @s[scores={Bebida_Fresa=..0}] Bebida_Fresa