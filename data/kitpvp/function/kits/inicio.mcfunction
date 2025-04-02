scoreboard players add @s Desactivando 1
execute unless score @s Desactivando matches 80.. run return fail

execute as @s[tag=Militar] run return run function kitpvp:kits/militar/inicio
execute as @s[tag=Enderman] run return run function kitpvp:kits/enderman/inicio

execute if data storage modo_de_pvp {Mapa:"habitacion"} run give @s player_head[custom_data={impulso:1b},minecraft:custom_name='{"text":"Sostenlo en tus manos para mantener el impulso","color":"dark_aqua","underlined":true,"bold":true,"italic":false}',profile={id:[I;1295990684,1061900019,-2062854077,-967748123],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGIyMjFjYjk2MDdjOGE5YmYwMmZlZjVkNzYxNGUzZWIxNjljYzIxOWJmNDI1MGZkNTcxNWQ1ZDJkNjA0NWY3In19fQ=="}]}] 1
function kitpvp:kits/exparcir
execute at @s run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
tag @s remove sin_iniciar
scoreboard players reset @s Desactivando

execute as @s[tag=1.8] at @e[tag=P1.8] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=1.8] run fill 14 230 135 14 231 135 air

execute as @s[tag=CaDeEn] run execute at @e[tag=CDE] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=CaDeEn] run fill 19 230 137 19 231 137 air

execute as @s[tag=CaDeNe] run execute at @e[tag=CDN] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=CaDeNe] run fill 19 230 143 19 231 143 air

execute as @s[tag=CaDeOv] run execute at @e[tag=CDO] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=CaDeOv] run fill 19 230 140 19 231 140 air

execute as @s[tag=Creeper] run execute at @e[tag=CRP] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Creeper] run fill 17 235 133 17 234 133 air

execute as @s[tag=Doctor] run execute at @e[tag=DCT] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Doctor] run fill 11 230 145 11 231 145 air

execute as @s[tag=Elite] run execute at @e[tag=EL] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Elite] run fill 17 230 135 17 231 135 air

execute as @s[tag=Faraon] run execute at @e[tag=FR] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Faraon] run fill 11 235 133 11 234 133 air

execute as @s[tag=Neon] run execute at @e[tag=NEON] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Neon] run fill 21 235 143 21 234 143 air

execute as @s[tag=Nexo] at @e[tag=NEXO] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Nexo] run fill 14 235 147 14 234 147 air

execute as @s[tag=Poseidon] run execute at @e[tag=PSD] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Poseidon] run fill 11 230 135 11 231 135 air

execute as @s[tag=Quetzal] run execute at @e[tag=QZ] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Quetzal] run fill 17 230 145 17 231 145 air

execute as @s[tag=Sicario] run tag @s add cuerno_activado
execute as @s[tag=Sicario] run execute at @e[tag=SCR] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Sicario] run fill 21 235 140 21 234 140 air

execute as @s[tag=Stray] run execute at @e[tag=STY] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Stray] run fill 11 235 147 11 234 147 air

execute as @s[tag=Tecnico] run execute at @e[tag=TEC] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Tecnico] run fill 17 235 147 17 234 147 air

execute as @s[tag=Zorro] run execute at @e[tag=ZRR] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 2 0.7
execute as @s[tag=Zorro] run fill 21 235 137 21 234 137 air