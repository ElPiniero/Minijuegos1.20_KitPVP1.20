execute at @s run playsound entity.elder_guardian.curse master @a[tag=!sesion_no_iniciada] ~ ~ ~ .5
execute at @s run particle campfire_signal_smoke ~ ~1 ~ .1 .1 .1 0.1 50 normal
damage @s 50 player_attack by @p[tag=Faraon,tag=!sesion_no_iniciada]
effect give @s weakness 900 4
effect give @s slowness 90 4
tag @s add Maldicion