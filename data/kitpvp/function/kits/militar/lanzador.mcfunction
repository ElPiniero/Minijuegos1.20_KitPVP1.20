execute as @s[nbt={active_effects:[{amplifier:24b,id:"minecraft:jump_boost"}]}] run effect give @s slow_falling 60 1 true
execute as @s[nbt={active_effects:[{amplifier:24b,id:"minecraft:jump_boost"}]}] run particle poof ~ ~ ~ .1 .1 .1 .5 100 force
execute as @s[nbt={active_effects:[{amplifier:24b,id:"minecraft:jump_boost"}]}] run playsound entity.wither.shoot master @a[tag=!sesion_no_iniciada] ~ ~ ~ 3 1
execute as @s[nbt={active_effects:[{amplifier:24b,id:"minecraft:jump_boost"}]}] run effect clear @s jump_boost