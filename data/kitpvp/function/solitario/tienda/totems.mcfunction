execute if score @s ZombieShop matches ..3 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..3 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..3 run scoreboard players reset @s Totems

execute if score @s ZombieShop matches 4.. run give @s totem_of_undying
execute if score @s ZombieShop matches 4.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 4.. run clear @s diamond 4
execute if score @s ZombieShop matches 4.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 4.. run scoreboard players remove @s ZombieShop 4

scoreboard players remove @s Totems 1
scoreboard players reset @s[scores={Totems=..0}] Totems