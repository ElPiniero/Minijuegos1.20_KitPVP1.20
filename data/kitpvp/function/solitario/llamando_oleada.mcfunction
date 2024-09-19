execute if score @s Llamando_Oleada matches 1 run tag @e[type=#zombies,distance=..10] add oleada_jugador
execute if score @s Llamando_Oleada matches 1..100 run tp @e[type=#zombies,distance=5..10,sort=nearest,tag=oleada_jugador] @s
execute if score @s[tag=Jugador_Zombi_1] Llamando_Oleada matches 1..20 run playsound entity.hoglin.converted_to_zombified master @a ~ ~ ~ 5 0
execute if score @s[tag=Jugador_Zombi_2] Llamando_Oleada matches 1..20 run playsound entity.piglin.converted_to_zombified master @a ~ ~ ~ 5 0
execute if score @s Llamando_Oleada matches 1..100 run particle dust_color_transition{from_color:[0.612,0.043,0.043],scale:1,to_color:[0.122,0.004,0.004]} ~ ~1 ~ .2 .5 .2 1 3 force
scoreboard players add @s[scores={Llamando_Oleada=1..100}] Llamando_Oleada 1
execute if score @s Llamando_Oleada matches 100.. run tag @e[type=#zombies,distance=..10,tag=oleada_jugador] remove oleada_jugador
execute if score @s Llamando_Oleada matches 100.. run scoreboard players reset @s Llamando_Oleada