give @s chorus_fruit[consumable={consume_seconds:1,on_consume_effects:[{type:"teleport_randomly"}]}] 20
give @s ender_pearl 16
give @s dried_kelp[custom_name='[{"text":"Super Teletransportacion","italic":false,"color":"light_purple"}]',consumable={consume_seconds:1,animation:eat},food={can_always_eat:true,nutrition:0,saturation:0}] 16
function kitpvp:kits/exparcir
execute at @s run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
tag @s remove sin_iniciar
scoreboard players reset @s Desactivando
execute if data storage modo_de_pvp {Mapa:"habitacion"} run give @s player_head[consumable={consume_seconds:0.0,animation:'none',sound:'block.vault.step',has_consume_particles:false},use_remainder={id:"player_head",count:1,components:{custom_data:{impulso:1b},profile:{id:[I;1295990684,1061900019,-2062854077,-967748123],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGIyMjFjYjk2MDdjOGE5YmYwMmZlZjVkNzYxNGUzZWIxNjljYzIxOWJmNDI1MGZkNTcxNWQ1ZDJkNjA0NWY3In19fQ=="}]}}},minecraft:custom_name='{"text":"Click derecho para activar impulso","color":"dark_aqua","underlined":true,"bold":true,"italic":false}',profile={id:[I;1295990684,1061900019,-2062854077,-967748123],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGIyMjFjYjk2MDdjOGE5YmYwMmZlZjVkNzYxNGUzZWIxNjljYzIxOWJmNDI1MGZkNTcxNWQ1ZDJkNjA0NWY3In19fQ=="}]}] 1
execute at @e[tag=EDM] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
fill 14 230 145 14 231 145 air