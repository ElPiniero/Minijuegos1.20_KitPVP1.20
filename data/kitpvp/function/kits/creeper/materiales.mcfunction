#------------------------------CREEPER------------------------------#

execute as @e[type=!#kitpvp:inmunes,distance=1..5,nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=Creeper] run effect give @e[type=!#kitpvp:inmunes,distance=..1] slow_falling 10 0
execute as @e[type=#zombies,distance=1..5,nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=Creeper] run effect give @e[type=#zombies,distance=..1] instant_health 10 1
execute if score @s Sandia matches 1.. run effect give @s instant_health
execute if score @s Sandia matches 1.. run effect give @s hunger 1 100
execute if score @s Sandia matches 1.. run effect give @s regeneration 7 1 false
execute if score @s Sandia matches 1.. run scoreboard players reset @s Sandia

execute if entity @s[nbt={SelectedItem:{id:"minecraft:gunpowder",components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Polvora caliente"}'}}},gamemode=!spectator] run function kitpvp:kits/creeper/trigger
execute if score @s Encender_Creeper matches 1.. unless entity @s[nbt={SelectedItem:{id:"minecraft:gunpowder",components:{"minecraft:custom_name":'{"color":"gold","italic":false,"text":"Polvora caliente"}'}}}] run scoreboard players reset @s Encender_Creeper

effect give @s invisibility infinite 0 true
effect give @s speed infinite 0 true
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.creeper.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1