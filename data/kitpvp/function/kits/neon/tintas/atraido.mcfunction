execute at @s run particle dust{color:[0.231,0.424,0.941],scale:1} ~ ~1 ~ .35 .5 .35 0 2 force
scoreboard players add @s Atraido_Tiempo 1
execute at @s if score @s Atraido_Tiempo matches 1 run scoreboard players operation @s Atraido = #ine-neon INESoldado
execute at @s if score @s Atraido_Tiempo matches 1 run playsound entity.leash_knot.place master @a ~ ~ ~ 1 2
execute at @s if score @s Atraido_Tiempo matches 1 run playsound entity.leash_knot.place master @a ~ ~ ~ 1 1
execute at @s if score @s Atraido_Tiempo matches 1 run playsound entity.leash_knot.place master @a ~ ~ ~ 1 0
execute at @s if score @s Atraido_Tiempo matches 1 as @a[tag=Neon,tag=!sesion_no_iniciada] if score @s INESoldado = #ine-neon INESoldado run tag @s add yoloatraje
execute at @s if score @s Atraido_Tiempo matches 1.. at @a[tag=yoloatraje,limit=1] anchored eyes run tp @s ^ ^ ^.5
execute if score @s Atraido_Tiempo matches 100.. run scoreboard players reset @s Atraido
execute if score @s Atraido_Tiempo matches 100.. run scoreboard players reset @s Atraido_Tiempo
tag @a remove yoloatraje