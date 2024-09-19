kill @e[type=snowball,sort=nearest,limit=1,tag=!Bola]
scoreboard players reset @s Alcance-Bala
playsound entity.illusioner.cast_spell master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1
playsound entity.illusioner.cast_spell master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
execute anchored eyes positioned ^ ^ ^.3 run particle reverse_portal ^ ^ ^.3 0 0 0 .6 30 force
execute anchored eyes positioned ^ ^ ^.3 run particle dust_color_transition{from_color:[0.988,0.745,0.953],scale:1,to_color:[0.906,0.067,0.796]} ^ ^ ^.3 .4 .4 .4 1 20 force
execute anchored eyes run function kitpvp:solitario/tienda/torreta/proyectil