execute at @e[tag=CDE] run tp @a[tag=!sesion_no_iniciada,tag=CaDeEn,tag=sin_iniciar] @e[tag=Spawn,limit=1,sort=random]
execute as @a[tag=!sesion_no_iniciada,tag=CaDeEn,tag=sin_iniciar] at @s if entity @e[tag=Spawn,distance=..1] run tag @s remove sin_iniciar
execute at @a[tag=!sesion_no_iniciada,tag=CaDeEn] if entity @e[tag=Spawn,distance=..1] run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
execute at @e[tag=CDE] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
fill 19 230 137 19 231 137 air