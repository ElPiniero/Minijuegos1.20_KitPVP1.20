tp @s ^ ^ ^
scoreboard players operation #ine-misil INESoldado = @s INESoldado
execute unless block ^ ^ ^ #kitpvp:pasables run tag @s add yachoco
particle dust_color_transition{from_color:[1.000,0.902,0.000],scale:3,to_color:[1.000,1.000,1.000]} ^ ^ ^ .1 .1 .1 1 5 force
particle flame ^ ^ ^ .1 .1 .1 0.2 10 force

scoreboard players add @s Alcance-Bala 1
execute if score @s Alcance-Bala matches 200.. run tag @s add yachoco
execute if entity @e[distance=..2,type=!#kitpvp:inmunes] unless score @e[distance=..2,sort=nearest,limit=1,type=!#kitpvp:inmunes] INESoldado = @s INESoldado run tag @s add yachoco
execute as @s[tag=yachoco] at @s run function kitpvp:kits/militar/lanzamisiles/yachoco