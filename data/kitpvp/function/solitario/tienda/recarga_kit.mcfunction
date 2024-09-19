execute if score @s ZombieShop matches ..15 run title @s actionbar {"text": "No hay suficiente para comprar","color": "red"}
execute if score @s ZombieShop matches ..15 run playsound block.note_block.bit master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
execute if score @s ZombieShop matches ..15 run scoreboard players reset @s Recarga_Kit

execute if score @s ZombieShop matches 16.. run function kitpvp:kits/recargas
execute if score @s ZombieShop matches 16.. run playsound entity.experience_orb.pickup master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute if score @s ZombieShop matches 16.. run clear @s diamond 16
execute if score @s ZombieShop matches 16.. run tag @a[tag=Jugador_Vivo,tag=!sesion_no_iniciada] remove lg_austeridad
execute if score @s ZombieShop matches 16.. run scoreboard players remove @s ZombieShop 16

scoreboard players remove @s Recarga_Kit 1
scoreboard players reset @s[scores={Recarga_Kit=..0}] Recarga_Kit