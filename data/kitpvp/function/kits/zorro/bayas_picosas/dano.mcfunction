scoreboard players operation #ine-soldado INESoldado = @s INESoldado
execute as @a[tag=!sesion_no_iniciada,tag=Zorro] if score @s INESoldado = #ine-soldado INESoldado run tag @s add leatine 
effect give @e[type=!#kitpvp:inmunes,distance=..2.2,tag=!Zorro] slowness 1 5 true
execute as @e[type=#zombies,distance=..2.2,tag=!Zorro] run damage @s 30 sweet_berry_bush by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..2.2,tag=!Zorro] run damage @s 15 sweet_berry_bush by @a[tag=leatine,limit=1]
execute as @e[type=!#kitpvp:inmunes,distance=..2.2,tag=!Zorro] at @s anchored eyes facing entity @e[type=item_display,tag=BayaPicosa,tag=yachoco,sort=nearest,limit=1,distance=1..2.2] eyes rotated ~ 0 run tp @s ^ ^ ^.5
playsound block.sweet_berry_bush.place master @a ~ ~ ~ 1
playsound block.sweet_berry_bush.place master @a ~ ~ ~ 1
playsound block.sweet_berry_bush.pick_berries master @a ~ ~ ~ 1
playsound block.sweet_berry_bush.pick_berries master @a ~ ~ ~ 1
tag @a remove leatine