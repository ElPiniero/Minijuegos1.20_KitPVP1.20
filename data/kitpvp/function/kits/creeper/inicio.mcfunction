execute at @e[tag=CRP] run tp @a[tag=!sesion_no_iniciada,tag=Creeper,tag=sin_iniciar] @e[tag=Spawn,limit=1,sort=random]
execute as @a[tag=!sesion_no_iniciada,tag=Creeper,tag=sin_iniciar] at @s if entity @e[tag=Spawn,distance=..1] run tag @s remove sin_iniciar
execute at @a[tag=!sesion_no_iniciada,tag=Creeper] if entity @e[tag=Spawn,distance=..1] run particle poof ~ ~1 ~ .2 .2 .2 .01 20 normal
execute at @e[tag=CRP] run playsound block.piston.contract master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
fill 17 235 133 17 234 133 air