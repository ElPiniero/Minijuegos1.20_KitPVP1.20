execute on target run tag @s add emboscado
execute anchored eyes facing entity @e[tag=emboscado,type=!#kitpvp:inmunes,sort=nearest,limit=1] eyes anchored feet positioned ^ ^ ^1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 unless entity @s[distance=...75] run function kitpvp:solitario/hordas/emboscada
tag @e[type=!#kitpvp:inmunes] remove emboscado