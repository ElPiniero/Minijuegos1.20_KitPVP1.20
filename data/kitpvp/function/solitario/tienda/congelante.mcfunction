execute if score @s ZombieShop matches ..9 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..9 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..9 run scoreboard players reset @s Congelante

execute if score @s ZombieShop matches 10.. run give @s egg[custom_name='[{"text":"Congelante","italic":false,"color":"aqua"}]',lore=['[{"text":"Congela a los zombis","italic":false,"color":"gray"}]','[{"text":"tirala hacia arriba","italic":false,"color":"gray"}]','[{"text":"para que el efecto","italic":false,"color":"gray"}]','[{"text":"dure mas tiempo","italic":false,"color":"gray"}]']]
execute if score @s ZombieShop matches 10.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 10.. run clear @s diamond 10
execute if score @s ZombieShop matches 10.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 10.. run scoreboard players remove @s ZombieShop 10

scoreboard players remove @s Congelante 1
scoreboard players reset @s[scores={Congelante=..0}] Congelante