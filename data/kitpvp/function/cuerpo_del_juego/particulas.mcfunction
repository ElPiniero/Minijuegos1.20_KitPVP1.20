execute at @s[tag=!sesion_no_iniciada,scores={EnGappleON=1..}] run playsound block.beacon.activate master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
execute at @s[tag=!sesion_no_iniciada,scores={EnGappleON=1..}] run playsound block.beacon.activate master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
execute at @s[tag=!sesion_no_iniciada,scores={EnGappleON=1..}] run playsound block.beacon.activate master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
execute at @s[tag=!sesion_no_iniciada,scores={EnGappleON=1..}] run playsound block.beacon.activate master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2

execute at @s[tag=!sesion_no_iniciada,scores={GappleON=1..}] run playsound block.respawn_anchor.charge master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2

execute at @s[tag=!sesion_no_iniciada,scores={Damage=1..}] run particle block{block_state:"minecraft:nether_wart_block"} ~ ~1 ~ .1 .1 .1 1 30 normal
execute as @s[tag=!sesion_no_iniciada,scores={Damage=1..},tag=Jugador_Zombi] at @s run function kitpvp:solitario/dano_zombi

execute at @s[tag=!sesion_no_iniciada,scores={AbsorbedDamage=1..}] run particle block{block_state:"minecraft:horn_coral"} ~ ~1 ~ .1 .1 .1 1 30 normal
execute at @s[tag=!sesion_no_iniciada,scores={AbsorbedDamage=1..}] run playsound block.respawn_anchor.set_spawn master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2

execute at @s[tag=!sesion_no_iniciada,scores={Shield=1..}] run playsound item.shield.block master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1
execute at @s[tag=!sesion_no_iniciada,scores={Shield=1..}] on attacker if items entity @s weapon.mainhand #axes run playsound item.shield.break master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1

execute at @s[tag=!sesion_no_iniciada,scores={Potion=1..}] run playsound block.brewing_stand.brew master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 2
execute at @s[tag=!sesion_no_iniciada,scores={Potion=1..}] run playsound entity.witch.drink master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1

scoreboard players reset @s Potion
scoreboard players reset @s Shield
scoreboard players reset @s AbsorbedDamage
scoreboard players reset @s Damage
scoreboard players reset @s GappleON
scoreboard players reset @s EnGappleON