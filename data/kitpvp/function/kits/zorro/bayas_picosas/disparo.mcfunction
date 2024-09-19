summon item_display ~ ~1 ~ {Tags:["BayaPicosa"],item:{id:"minecraft:sweet_berries",count:1}}
execute positioned ~ ~1 ~ run scoreboard players operation @e[type=item_display,tag=BayaPicosa,sort=nearest,limit=1,distance=...5] INESoldado = @s INESoldado
execute positioned ~ ~1 ~ run tp @e[type=item_display,tag=BayaPicosa,sort=nearest,limit=1,distance=...5] @e[type=egg,sort=nearest,limit=1,distance=..2]
scoreboard players reset @s Huevo
