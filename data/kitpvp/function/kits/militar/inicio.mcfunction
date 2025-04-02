give @s crossbow[unbreakable={},custom_name='{"text":"Rifle de Asalto","italic":false,"color":"green"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
give @s crossbow[unbreakable={},custom_name='{"text":"Escopeta","italic":false,"color":"dark_purple"}',charged_projectiles=[{id:"minecraft:arrow",count:1}]]
give @s crossbow[unbreakable={},custom_name='{"text":"Lanzamisiles","italic":false,"color":"gold"}',charged_projectiles=[{id:"minecraft:firework_rocket",count:1}]]
function kitpvp:kits/exparcir
execute at @s run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
tag @s remove sin_iniciar
scoreboard players reset @s Desactivando
execute if data storage modo_de_pvp {Mapa:"habitacion"} run give @s player_head[consumable={consume_seconds:0.0,animation:'none',sound:'block.vault.step',has_consume_particles:false},use_remainder={id:"player_head",count:1,components:{custom_data:{impulso:1b},profile:{id:[I;1295990684,1061900019,-2062854077,-967748123],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGIyMjFjYjk2MDdjOGE5YmYwMmZlZjVkNzYxNGUzZWIxNjljYzIxOWJmNDI1MGZkNTcxNWQ1ZDJkNjA0NWY3In19fQ=="}]}}},minecraft:custom_name='{"text":"Click derecho para activar impulso","color":"dark_aqua","underlined":true,"bold":true,"italic":false}',profile={id:[I;1295990684,1061900019,-2062854077,-967748123],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGIyMjFjYjk2MDdjOGE5YmYwMmZlZjVkNzYxNGUzZWIxNjljYzIxOWJmNDI1MGZkNTcxNWQ1ZDJkNjA0NWY3In19fQ=="}]}] 1
execute at @e[tag=ML] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
fill 14 235 133 14 234 133 air