execute if score @s Cohete matches 1.. if entity @s[nbt={FallFlying:1b}] unless score @s Crossbow matches 1.. run clear @s elytra
execute if score @s Cohete matches 1.. unless score @s Crossbow matches 1.. run give @s elytra[unbreakable={},enchantments={projectile_protection:4,binding_curse:1},attribute_modifiers=[{type:"armor",slot:"chest",operation:add_value,id:"armor",amount:3}]]
scoreboard players reset @s[scores={Cohete=1..}] Crossbow
scoreboard players reset @s Cohete
effect give @s night_vision infinite 0 true
effect give @s resistance infinite 2 true

scoreboard players enable @s militar-descargar
execute if items entity @s weapon.mainhand crossbow run attribute @s attack_knockback base set 2
execute unless items entity @s weapon.mainhand crossbow run attribute @s attack_knockback base set 0

function kitpvp:kits/militar/rifle/trigger
function kitpvp:kits/militar/escopeta/trigger
function kitpvp:kits/militar/lanzamisiles/trigger
execute as @e[tag=e-recargar,type=interaction] at @s unless entity @p[tag=Recarga,distance=..2] run kill @s
execute as @e[tag=r-recargar,type=interaction] at @s unless entity @p[tag=Recarga,distance=..2] run kill @s
execute as @a[tag=!sesion_no_iniciada,scores={Salto=1..},nbt={active_effects:[{amplifier:24b,id:"minecraft:jump_boost"}]},tag=Militar] at @s run function kitpvp:kits/militar/lanzador
execute as @a[tag=!sesion_no_iniciada,nbt={active_effects:[{amplifier:1b,id:"minecraft:slow_falling"}]}] positioned ^ ^ ^-1 run particle poof ~ ~ ~ .1 .1 .1 .01 2 force
execute as @a[tag=!sesion_no_iniciada,nbt={active_effects:[{amplifier:1b,id:"minecraft:slow_falling"}],OnGround:1b}] run effect clear @s slow_falling
scoreboard players reset @s[scores={Salto=1..}] Salto