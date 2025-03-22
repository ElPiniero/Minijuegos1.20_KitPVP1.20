scoreboard players reset #jugadores Conteo
execute as @a[tag=!sesion_no_iniciada] run scoreboard players add #jugadores Conteo 1
tellraw @a[tag=!sesion_no_iniciada] [{"text": "Iniciando una votacion para desactivar el subminijuego ","color": "light_purple"},{"text": "SUPERVIVENCIA ZOMBIS","color": "dark_red","bold": true},{"text": ", 10 segundos para terminar","color": "light_purple"}]
playsound block.note_block.harp master @a[tag=!sesion_no_iniciada] ~ ~ ~ 10000 2
scoreboard players reset #tiempo-s-z Tiempo
scoreboard players add #tiempo-s-z Tiempo 10
tag @a[tag=!sesion_no_iniciada] add en_votacion

playsound block.stone.place master @a ~ ~ ~ 2 2
data modify entity @n[type=item_display] glow_color_override set value 16514816
data modify entity @n[type=item_display] item.components."minecraft:profile" set value {id:[I;1331391231,-1773320469,-1700303810,-1946077383],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjA4YWQ4NjhiNWEzMGM4ZTQyNGM0MDk3M2UzN2IxYzBjYzA1NmFlZWRjYmE5OWJiNGZkZTFhOTQ3YmU3OGI4MCJ9fX0="}]}
data modify entity @n[type=item_display] Glowing set value 1b

function kitpvp:cuerpo_del_juego/votos/survival-z/s-z_en_contra
schedule function kitpvp:cuerpo_del_juego/votos/survival-z/conteo_desactivar 1s