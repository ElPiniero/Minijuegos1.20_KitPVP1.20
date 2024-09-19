ride @s mount @e[type=egg,sort=nearest,limit=1,distance=..2]
particle dust{color:[1.000,0.000,0.251],scale:1} ~ ~ ~ 0 0 0 1 5 force
execute unless entity @e[type=egg,sort=nearest,limit=1,distance=..2] run tag @s add yachoco