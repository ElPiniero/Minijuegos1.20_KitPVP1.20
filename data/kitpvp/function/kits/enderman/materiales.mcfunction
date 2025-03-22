#------------------------------ENDERMAN------------------------------#

execute unless score @e[type=ender_pearl,sort=nearest,limit=1,distance=..2] INESoldado = @s INESoldado run scoreboard players operation @e[type=ender_pearl,sort=nearest,limit=1,distance=..2] INESoldado = @s INESoldado
execute as @e[type=!#kitpvp:inmunes,distance=1..5,nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=Enderman] run effect give @e[type=!#kitpvp:inmunes,distance=..1] slowness 10 1 false
execute if score @s[tag=!supervivencia-z] SuTe matches 1 run function kitpvp:kits/enderman/super_teletransportacion/activacion
execute if score @s[tag=supervivencia-z] SuTe matches 1 run function kitpvp:kits/enderman/super_teletransportacion/s-activacion
execute if score @s Pegar matches 1.. if predicate kitpvp:30 run effect give @s instant_health 1 0
execute if score @s SuTe matches 1 run particle portal ~ ~1 ~ .1 .1 .1 1 100 normal
execute if score @s Chorus matches 1 run effect give @s saturation 4 0 true
execute if score @s Chorus matches 1 run effect give @s regeneration 5 2 false

effect give @s health_boost infinite 4 true
effect give @s speed infinite 0 true
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.enderman.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
scoreboard players reset @s[scores={Pegar=1..}] Pegar
scoreboard players reset @s[scores={Chorus=1}] Chorus