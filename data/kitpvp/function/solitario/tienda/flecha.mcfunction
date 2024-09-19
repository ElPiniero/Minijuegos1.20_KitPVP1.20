execute if score @s ZombieShop matches ..15 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..15 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..15 run scoreboard players reset @s Flecha

execute if score @s ZombieShop matches 16.. run give @s tipped_arrow[custom_name='[{"text":"Flecha de Curacion V","italic":false,"color": "#ff0000"}]',potion_contents={custom_color:16711735,custom_effects:[{id:"minecraft:instant_health",duration:4,amplifier:4,show_particles:0b}]}] 32
execute if score @s ZombieShop matches 16.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 16.. run clear @s diamond 16
execute if score @s ZombieShop matches 16.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 16.. run scoreboard players remove @s ZombieShop 16

scoreboard players remove @s Flecha 1
scoreboard players reset @s[scores={Flecha=..0}] Flecha