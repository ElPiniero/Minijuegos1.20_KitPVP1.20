execute at @a[tag=!sesion_no_iniciada,tag=Maldicion] run particle campfire_signal_smoke ~ ~1 ~ .1 .1 .1 0.1 50 normal
execute at @a[tag=!sesion_no_iniciada,tag=Maldicion] run playsound entity.elder_guardian.curse master @a[tag=!sesion_no_iniciada] ~ ~ ~ 5
effect give @a[tag=!sesion_no_iniciada,tag=Maldicion] blindness 10 0
effect give @a[tag=!sesion_no_iniciada,tag=Maldicion] wither 30 2
effect give @a[tag=!sesion_no_iniciada,tag=Maldicion] hunger 10 127
effect give @a[tag=!sesion_no_iniciada,tag=Maldicion] slowness 30 2

tag @a[tag=!sesion_no_iniciada,tag=Maldicion] remove Maldicion
tag @e[type=#zombies,tag=Maldicion] remove Maldicion
tag @s remove leatine
scoreboard players reset @s Alcance-Bala
scoreboard players reset @s BetaM