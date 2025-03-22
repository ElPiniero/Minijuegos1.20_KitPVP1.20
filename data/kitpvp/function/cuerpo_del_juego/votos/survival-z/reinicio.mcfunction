schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_activar
schedule clear kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar
scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
scoreboard players reset #tiempo-s-z
scoreboard players reset #favor-s-z
scoreboard players reset #contra-s-z

execute unless entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run data modify entity @n[type=item_display,tag=modo-zombis] item.components."minecraft:profile" set value {id:[I;-1679339935,-1900460474,-1502236591,1080088365],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI2OWI0MDkzYjA4Yjk4NDFhYjMzMjdjZjc4MDRmMDQyYzI3MWI5ZTZiOTk3OTJmZjllYmM1OTgxMmEyOGUxYSJ9fX0="}]}
execute unless entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run data modify entity @n[type=item_display,tag=modo-zombis] Glowing set value 0b

execute if entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run data modify entity @n[type=item_display,tag=modo-zombis] glow_color_override set value 655104
execute if entity @a[tag=!sesion_no_iniciada,tag=supervivencia-z] run data modify entity @n[type=item_display,tag=modo-zombis] item.components."minecraft:profile" set value {id:[I;-1298853024,282739304,-1179761505,-941630072],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTE2NjlkNDAwNGFmMTc2MDM3ZTk3NTJlMWFlOGVhMmMyZGJhMzJkMDU3MDI1NmQzNGJjM2RkYWU4MGZhZmFiZSJ9fX0="}]}

tag @a[tag=!sesion_no_iniciada] remove s-z-afavor
tag @a[tag=!sesion_no_iniciada] remove s-z-encontra
tag @a[tag=!sesion_no_iniciada] remove en_votacion