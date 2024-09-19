schedule function kitpvp:solitario/hordas/derrota 1t
schedule clear kitpvp:solitario/hordas/horda_5
schedule clear kitpvp:solitario/hordas/horda_4
schedule clear kitpvp:solitario/hordas/horda_3
schedule clear kitpvp:solitario/hordas/horda_2
schedule clear kitpvp:solitario/hordas/horda_1
stopsound @a[tag=!sesion_no_iniciada] master music_disc.13
stopsound @a[tag=!sesion_no_iniciada] master music.nether.soul_sand_valley
kill @e[tag=oleada-guia]
kill @e[tag=m-oleada-guia]
scoreboard players add #supervivencia-zombis ZombieBuff 1
execute unless entity @a[tag=!sesion_no_iniciada,tag=derrotado2] run scoreboard players set #supervivencia-zombis ZombieBuff 0
execute unless entity @a[tag=!sesion_no_iniciada,tag=derrotado2] run tag @a[tag=!sesion_no_iniciada] add derrotado2
execute if score #supervivencia-zombis ZombieBuff matches 1 run bossbar set lvl1 visible false
execute if score #supervivencia-zombis ZombieBuff matches 1 run summon lightning_bolt -56.00001 71 -24.00001
execute if score #supervivencia-zombis ZombieBuff matches 1 run title @a[tag=!sesion_no_iniciada] times 1 300 20
execute if score #supervivencia-zombis ZombieBuff matches 1 run title @a[tag=!sesion_no_iniciada] title [{"text":""},{"text":"M","bold":true,"color":"dark_gray"},{"text":"A","bold":true,"color":"#5e2f2f"},{"text":"L","bold":true,"color":"#7e1f1f"},{"text":"D","bold":true,"color":"#9e0f0f"},{"text":"E","bold":true,"color":"dark_red"},{"text":"C","bold":true,"color":"#9e0f0f"},{"text":"I","bold":true,"color":"#7e1f1f"},{"text":"D","bold":true,"color":"#5e2f2f"},{"text":"O","bold":true,"color":"dark_gray"}]
execute if score #supervivencia-zombis ZombieBuff matches 1 run title @a[tag=!sesion_no_iniciada] subtitle {"text": " ","color": "dark_gray","bold": true}
execute if score #supervivencia-zombis ZombieBuff matches 100 run title @a[tag=!sesion_no_iniciada] subtitle [{"text":""},{"text":"N","bold":true,"color":"dark_red"},{"text":"o ","bold":true,"color":"#b20505"},{"text":"p","bold":true,"color":"#a60b0b"},{"text":"u","bold":true,"color":"#9b1111"},{"text":"d","bold":true,"color":"#8f1616"},{"text":"i","bold":true,"color":"#841c1c"},{"text":"s","bold":true,"color":"#782222"},{"text":"t","bold":true,"color":"#6d2828"},{"text":"e ","bold":true,"color":"#612d2d"},{"text":"l","bold":true,"color":"#563333"},{"text":"i","bold":true,"color":"#4a3939"},{"text":"b","bold":true,"color":"dark_gray"},{"text":"r","bold":true,"color":"#4a3939"},{"text":"a","bold":true,"color":"#563333"},{"text":"r ","bold":true,"color":"#612d2d"},{"text":"a","bold":true,"color":"#6d2828"},{"text":"l ","bold":true,"color":"#782222"},{"text":"p","bold":true,"color":"#841c1c"},{"text":"u","bold":true,"color":"#8f1616"},{"text":"e","bold":true,"color":"#9b1111"},{"text":"b","bold":true,"color":"#a60b0b"},{"text":"l","bold":true,"color":"#b20505"},{"text":"o","bold":true,"color":"dark_red"}]
execute if score #supervivencia-zombis ZombieBuff matches 200.. run function kitpvp:solitario/reinicio