execute as @e[tag=salida] at @s rotated ~10 ~ run tp @s ~ ~ ~ ~ ~
setblock -187 72 103 light[level=15]
schedule clear kitpvp:solitario/hordas/victoria/victoria
execute as @e[tag=salida,type=block_display] at @s if entity @p[distance=..10] run function #load
schedule function kitpvp:solitario/hordas/victoria/materiales 1t