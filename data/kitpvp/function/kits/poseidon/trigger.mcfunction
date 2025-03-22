scoreboard players operation #ine-tridente INESoldado = @s INESoldado
execute if items entity @s weapon.offhand trident unless data entity @s {Tags:["tridente_viaje"]} run tag @s add tridente_viaje

execute as @s[advancements={kitpvp:kitpvp/tridente=true},tag=tridente_viaje] as @e[type=trident] at @s on origin if score @s INESoldado = #ine-tridente INESoldado run ride @s mount @n[type=trident]
advancement revoke @s only kitpvp:kitpvp/tridente
execute as @e[type=trident,nbt={inGround:1b}] on passengers run ride @s dismount

execute unless items entity @s weapon.offhand trident if data entity @s {Tags:["tridente_viaje"]} run tag @s remove tridente_viaje

execute unless data storage supervivencia-zombis {Activado:1b} if items entity @s weapon.mainhand trident unless items entity @s weapon.mainhand trident[enchantments={sharpness:9}] run item replace entity @s weapon.mainhand with trident[unbreakable={},enchantments={sharpness:9,"minecraft:loyalty":3}]
execute if data storage supervivencia-zombis {Activado:1b} if items entity @s weapon.mainhand trident unless items entity @s weapon.mainhand trident[enchantments={smite:9}] run item replace entity @s weapon.mainhand with trident[unbreakable={},enchantments={smite:9,"minecraft:loyalty":10}]