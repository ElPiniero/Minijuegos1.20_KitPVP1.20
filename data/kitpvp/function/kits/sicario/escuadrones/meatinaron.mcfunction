scoreboard players operation #ine-escuadron INESoldado = @s INESoldado
execute as @a[tag=Sicario,tag=!sesion_no_iniciada] if score @s INESoldado = #ine-escuadron INESoldado run tag @s add leatineescuadron
tellraw @a[tag=!sesion_no_iniciada] [{"text": "El escuadron de ","extra":[{"selector":"@a[tag=leatineescuadron,limit=1]"}],"color": "white","italic": false},{"text": " ah realizado una baja","color": "white","italic": false}]
scoreboard players add @a[tag=leatineescuadron] Racha 1
scoreboard players add @a[tag=leatineescuadron] Bajas 1
scoreboard players add @a[tag=leatineescuadron] Esp_Sicario 1
scoreboard players add @a[tag=leatineescuadron] muertes_jugador 1
tag @a remove leatineescuadron
tag @s remove leatinetropa