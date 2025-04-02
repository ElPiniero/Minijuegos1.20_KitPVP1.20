#execute unless block ~ 99 ~ dark_oak_planks run tag @s add mesalidelmapawey
#spreadplayers -112 192 1 40 false @s[tag=mesalidelmapawey]
data get entity @s Pos
spreadplayers -112 192 1 40 false @s
data get entity @s Pos
data modify entity @s Pos.[1] set value 142d

#effect give @s glowing
item replace entity @s[tag=!jefes] armor.chest with elytra[enchantments={vanishing_curse:1}]
item replace entity @s[tag=jefes] armor.chest with elytra[attribute_modifiers={modifiers:[{id:"elitro",type:armor,amount:8,operation:"add_value",slot:"chest"}]},enchantments={protection:4,thorns:4,vanishing_curse:1}]
attribute @s safe_fall_distance base set 99
data merge entity @s {NoGravity:0b}
tag @s remove mesalidelmapawey