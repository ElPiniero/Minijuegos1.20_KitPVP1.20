#------------------------------DOCTOR------------------------------#

effect clear @s blindness
effect clear @s hunger
effect clear @s instant_damage
effect clear @s jump_boost
effect clear @s darkness
effect clear @s levitation
effect clear @s mining_fatigue
effect clear @s nausea
effect clear @s poison
effect clear @s slow_falling
effect clear @s slowness
effect clear @s weakness
effect clear @s wither
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:shield"}]}] run effect give @s resistance 1 2 true
execute if score @s[tag=!Jugador_Zombi] Damage matches 1.. run playsound entity.evoker.hurt master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1