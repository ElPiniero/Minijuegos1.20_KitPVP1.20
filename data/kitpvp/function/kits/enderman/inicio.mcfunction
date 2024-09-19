execute at @e[tag=EDM] run give @p[tag=Enderman] chorus_fruit 20
execute at @e[tag=EDM] run give @p[tag=Enderman] ender_pearl 16
execute at @e[tag=EDM] run give @p[tag=Enderman] dried_kelp[custom_name='[{"text":"Super Teletransportacion","italic":false,"color":"light_purple"}]'] 16
execute at @e[tag=EDM] run tp @a[tag=!sesion_no_iniciada,tag=Enderman,tag=sin_iniciar] @e[tag=Spawn,limit=1,sort=random]
execute as @a[tag=!sesion_no_iniciada,tag=Enderman,tag=sin_iniciar] at @s if entity @e[tag=Spawn,distance=..1] run tag @s remove sin_iniciar
execute at @a[tag=!sesion_no_iniciada,tag=Enderman] if entity @e[tag=Spawn,distance=..1] run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
execute at @e[tag=EDM] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
fill 14 230 145 14 231 145 air