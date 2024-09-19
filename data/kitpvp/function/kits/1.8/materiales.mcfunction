tag @e[type=fishing_bobber,sort=nearest,limit=1] add caniazo
execute unless score @e[tag=caniazo,sort=nearest,limit=1] INESoldado matches 1.. run scoreboard players operation @e[tag=caniazo,sort=nearest,limit=1] INESoldado = @s INESoldado
execute as @e[tag=caniazo] at @s positioned ~ ~-1 ~ if entity @e[type=!#kitpvp:inmunes,limit=1,sort=nearest,distance=..1.5] unless score @e[type=!#kitpvp:inmunes,limit=1,sort=nearest,distance=..1.5] INESoldado = @s INESoldado run tag @s add yachoco
execute if score @e[tag=yachoco,limit=1] INESoldado = @s INESoldado run tag @s add yapesque
execute as @s[tag=!supervivencia-z] run execute as @e[tag=caniazo,tag=yachoco] at @s positioned ~ ~-1 ~ run damage @e[type=!#kitpvp:inmunes,limit=1,sort=nearest,distance=..1.5] 7 player_attack by @p[tag=yapesque]
execute as @s[tag=supervivencia-z] run execute as @e[tag=caniazo,tag=yachoco] at @s positioned ~ ~-1 ~ run damage @e[type=!#kitpvp:inmunes,limit=1,sort=nearest,distance=..1.5] 12.5 generic by @p[tag=yapesque]
execute as @e[tag=caniazo,tag=yachoco] at @s run tag @p[tag=yapesque] remove yapesque
execute as @e[tag=caniazo,tag=yachoco] at @s run kill @s
#give @a[tag=!sesion_no_iniciada] fishing_rod{AttributeModifiers: [{AttributeName: "generic.attack_speed", Amount: 20, Slot: mainhand, Name: "generic.attack_speed", UUID: [I; -122215, 16696, 222141, -33392]}, {AttributeName: "generic.attack_damage", Amount: 6, Slot: mainhand, Name: "generic.attack_damage", UUID: [I; -122215, 16796, 222141, -33592]}],Unbreakable:1,display:{Name:'[{"text":"Cañazo","color":"dark_aqua","italic": false}]'}}