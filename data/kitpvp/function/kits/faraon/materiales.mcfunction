#------------------------------FARAON------------------------------#

execute as @e[type=!#kitpvp:inmunes,distance=1..5,nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=Faraon] run effect give @e[type=!#kitpvp:inmunes,distance=..1] poison 10 1 false
execute as @e[type=#zombies,distance=1..5,nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=Faraon] run effect give @e[type=#zombies,distance=..1] weakness 10 1 false
execute if data storage supervivencia-zombis {Activado:1b} if entity @s[nbt={active_effects:[{id:"minecraft:regeneration",amplifier:4b}]}] if predicate kitpvp:10 run effect give @s instant_health
execute if score @s BetaM matches 1 run playsound entity.evoker.prepare_summon master @a ~ ~ ~ 1 2
execute if score @s BetaM matches 1 run tag @s add betameado
execute if score @s BetaM matches 1 unless data storage supervivencia-zombis {Iniciado:1b} anchored eyes run function kitpvp:kits/faraon/rayo_betam
execute if score @s BetaM matches 1 if data storage supervivencia-zombis {Iniciado:1b} anchored eyes run function kitpvp:kits/faraon/rayo_betam_z
execute if score @s BetaM matches 1 run function kitpvp:kits/faraon/betam
tag @s[tag=betameado] remove betameado

effect give @s health_boost infinite 29 true
effect give @s fire_resistance infinite 0 true
effect give @s strength infinite 0 true
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.ender_dragon.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1