scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
tellraw @a[tag=!sesion_no_iniciada] [{"text": "Subminijuego empezado con ","color": "dark_red"},{"score":{"objective":"Conteo","name":"#favor-s-z"},"color": "gold","bold": true},{"text": "/","color": "gold"},{"score":{"objective":"Conteo","name":"#jugadores"},"color": "gold","bold": true},{"text": " votos","color": "gold"}]
execute as @e[tag=Spawn,limit=1,sort=random] at @s run tp @a[tag=!sesion_no_iniciada] ~ ~ ~
effect clear @a
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/inicio/conteo_iniciar
schedule clear kitpvp:cuerpo_del_juego/entidades-trampa
scoreboard players reset #tiempo-s-z
scoreboard players reset #favor-s-z
give @a[tag=Enderman,tag=!sesion_no_iniciada] chorus_fruit[consumable={consume_seconds:1,on_consume_effects:[{type:"teleport_randomly"}]}] 16
give @a[tag=Enderman,tag=!sesion_no_iniciada] ender_pearl 16
give @a[tag=Enderman,tag=!sesion_no_iniciada] dried_kelp[custom_name='[{"text":"Super Teletransportacion","italic":false,"color":"light_purple"}]'] 16
give @a[tag=Militar,tag=!sesion_no_iniciada] crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
give @a[tag=Militar,tag=!sesion_no_iniciada] crossbow[unbreakable={},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
give @a[tag=Militar,tag=!sesion_no_iniciada] crossbow[unbreakable={},custom_name='{"text":"Lanzamisiles","italic":false,"color":"gold"}']
tag @a[tag=sin_iniciar,tag=!sesion_no_iniciada] remove sin_iniciar
execute as @a[tag=!sesion_no_iniciada] run function kitpvp:kits/efectos
execute at @a[tag=!sesion_no_iniciada] run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
tag @a[tag=!sesion_no_iniciada,tag=!s-z-afavor] add espectador
gamemode spectator @a[tag=!sesion_no_iniciada,tag=espectador]
function kitpvp:solitario/inicio
tag @a[tag=!sesion_no_iniciada] remove s-z-afavor