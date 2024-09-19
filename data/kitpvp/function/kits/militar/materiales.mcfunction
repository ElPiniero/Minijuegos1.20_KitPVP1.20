execute if score @s Cohete matches 1.. if entity @s[nbt={FallFlying:1b}] unless score @s Crossbow matches 1.. run clear @s elytra
execute if score @s Cohete matches 1.. unless score @s Crossbow matches 1.. run give @s elytra[unbreakable={},enchantments={projectile_protection:4,binding_curse:1},attribute_modifiers=[{type:"generic.armor",slot:"chest",operation:add_value,id:"armor",amount:3}]]
scoreboard players reset @s[scores={Cohete=1..}] Crossbow
scoreboard players reset @s Cohete

function kitpvp:kits/militar/rifle/trigger
function kitpvp:kits/militar/escopeta/trigger
function kitpvp:kits/militar/lanzamisiles/trigger
execute as @e[tag=e-recargar,type=interaction] at @s unless entity @p[tag=Recarga,distance=..2] run kill @s
execute as @e[tag=r-recargar,type=interaction] at @s unless entity @p[tag=Recarga,distance=..2] run kill @s
execute as @a[tag=!sesion_no_iniciada,scores={Salto=1..},nbt={active_effects:[{amplifier:24b,id:"minecraft:jump_boost"}]},tag=Militar] at @s run function kitpvp:kits/militar/lanzador
execute as @a[tag=!sesion_no_iniciada,nbt={active_effects:[{amplifier:1b,id:"minecraft:slow_falling"}]},tag=Militar] at @s run function kitpvp:kits/militar/lanzador
scoreboard players reset @s[scores={Salto=1..}] Salto