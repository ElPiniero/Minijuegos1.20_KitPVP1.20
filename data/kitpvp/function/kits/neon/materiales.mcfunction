#------------------------------NEON------------------------------#

execute if score @s Catalejo matches 1.. run function kitpvp:kits/neon/tintas/trigger

execute if items entity @s weapon.mainhand bow if items entity @s weapon.offhand cake positioned ^ ^1.5 ^.5 unless entity @e[type=block_display,tag=Pastel,tag=sin_disparar,distance=..3] run function kitpvp:kits/neon/pastel/activacion
execute at @s if score @s INESoldado = #ine-pastel INESoldado as @e[type=block_display,tag=Pastel,tag=sin_disparar] if score @s INESoldado = #ine-pastel INESoldado rotated ~ 0 positioned ^ ^1.5 ^.5 run tp @s ^ ^ ^
execute as @e[type=block_display,tag=Pastel,tag=sin_disparar] run function kitpvp:kits/neon/pastel/prevenir_muerte
execute if score @s Arco matches 1.. run function kitpvp:kits/neon/pastel/disparo

execute as @e[type=!#kitpvp:inmunes,distance=1..5,nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=Neon] run effect give @e[type=!#kitpvp:inmunes,distance=..1] slowness 3 3
execute as @e[type=#zombies,distance=1..5,nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=Neon] run effect give @e[type=#zombies,distance=..1] slowness 5 6
execute if score @s Bayabrillosa matches 1.. run effect give @s saturation 1 2

effect give @s resistance infinite 1 true
scoreboard players reset @s Bayabrillosa
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.allay.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2