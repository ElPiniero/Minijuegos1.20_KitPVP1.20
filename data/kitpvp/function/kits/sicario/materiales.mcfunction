#------------------------------SICARIO------------------------------#

execute unless entity @s[tag=Unido_a_Sicario] unless entity @s[tag=supervivencia-z] run function kitpvp:kits/sicario/unirse_a_sicarios
execute as @e[type=!#kitpvp:inmunes,tag=!ya_me_atacaron] at @s on attacker if entity @s[tag=Sicario] unless score @s INESoldado = @e[type=!#kitpvp:inmunes,sort=nearest,limit=1,distance=..1] INESoldado run function kitpvp:kits/sicario/ataque_de_escuadron
execute as @s[tag=cuerno_activado] run function kitpvp:kits/sicario/trigger
execute if score @s Vida matches ..15 run effect give @s strength 1 0 false
execute if score @s Vida matches ..12 run effect give @s strength 1 1 false
execute if score @s Vida matches ..9 run effect give @s strength 1 2 false
execute if score @s Vida matches ..6 run effect give @s strength 1 3 false
execute if score @s Vida matches ..3 run effect give @s strength 1 4 false
execute if score @s Totem matches 1.. run effect give @s health_boost infinite 0 true
execute if score @s Totem matches 1.. run effect give @s regeneration infinite 0 true
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.vindicator.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1