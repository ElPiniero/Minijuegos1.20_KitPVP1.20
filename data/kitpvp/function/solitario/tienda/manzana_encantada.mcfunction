execute if score @s ZombieShop matches ..0 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..0 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..0 run scoreboard players reset @s ManzanaEncantada

execute if score @s ZombieShop matches 1.. run give @s enchanted_golden_apple
execute if score @s ZombieShop matches 1.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 1.. run clear @s diamond 1
execute if score @s ZombieShop matches 1.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 1.. run scoreboard players remove @s ZombieShop 1

scoreboard players remove @s ManzanaEncantada 1
scoreboard players reset @s[scores={ManzanaEncantada=..0}] ManzanaEncantada