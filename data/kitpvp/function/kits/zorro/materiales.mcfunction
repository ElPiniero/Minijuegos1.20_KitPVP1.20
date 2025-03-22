#------------------------------ZORRO------------------------------#

function kitpvp:kits/zorro/trigger
execute if score @s Baya matches 1.. run effect give @s saturation 10 0 true
execute if score @s Baya matches 1.. run effect give @s regeneration 5 2 true
execute if score @s Baya matches 1.. run scoreboard players reset @s Baya

effect give @s speed infinite 1 true
effect give @s strength infinite 0 true
effect give @s night_vision infinite 0 true

execute if entity @s[nbt={active_effects:[{id:"minecraft:jump_boost",amplifier:4b}]}] if score @s Salto matches 1.. run effect give @s strength 3 4 false
execute if score @s[nbt={active_effects:[{amplifier:5b,id:"minecraft:strength"}]}] Pegar matches 1.. run effect clear @s strength
execute if score @s Pegar matches 1.. run scoreboard players reset @s Pegar
scoreboard players reset @s Salto
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.fox.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1