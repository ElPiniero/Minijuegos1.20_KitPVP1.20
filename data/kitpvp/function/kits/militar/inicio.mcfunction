execute at @e[tag=ML] run give @p[tag=Militar] crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute at @e[tag=ML] run give @p[tag=Militar] crossbow[unbreakable={},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
execute at @e[tag=ML] run give @p[tag=Militar] crossbow[unbreakable={},custom_name='{"text":"Lanzamisiles","italic":false,"color":"gold"}',charged_projectiles=[{id:"minecraft:firework_rocket",count:1}]]
execute at @e[tag=ML] run tp @a[tag=!sesion_no_iniciada,tag=Militar,tag=sin_iniciar] @e[tag=Spawn,limit=1,sort=random]
execute as @a[tag=!sesion_no_iniciada,tag=Militar,tag=sin_iniciar] at @s if entity @e[tag=Spawn,distance=..1] run tag @s remove sin_iniciar
execute at @a[tag=!sesion_no_iniciada,tag=Militar] if entity @e[tag=Spawn,distance=..1] run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
execute at @e[tag=ML] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
fill 14 235 133 14 234 133 air