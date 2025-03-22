execute if entity @a[tag=!zona_de_kits,tag=!sesion_no_iniciada] run playsound block.note_block.bit master @s ~ ~ ~ 10 0
execute if entity @a[tag=!zona_de_kits,tag=!sesion_no_iniciada] run return run title @s actionbar {"text": "Todos los jugadores deben estar en la zona de kits para cambiar esto","color": "red"}

data modify entity @n[type=item_display,tag=modo-eliminacion] item.components."minecraft:profile" set value {id:[I;-1679339935,-1900460474,-1502236591,1080088365],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}]}
data modify entity @n[type=item_display,tag=modo-eliminacion] Glowing set value 0b

data modify entity @n[type=item_display] item.components."minecraft:profile" set value {id:[I;-1298853024,282739304,-1179761505,-941630072],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE2NjlkNDAwNGFmMTc2MDM3ZTk3NTJlMWFlOGVhMmMyZGJhMzJkMDU3MDI1NmQzNGJjM2RkYWU4MGZhZmFiZSJ9fX0="}]}
data modify entity @n[type=item_display] Glowing set value 1b

playsound item.lodestone_compass.lock master @a ~ ~ ~ 2 0
playsound block.stone.place master @a ~ ~ ~ 2 2
data merge storage modo_de_pvp {Modo:"arena"}