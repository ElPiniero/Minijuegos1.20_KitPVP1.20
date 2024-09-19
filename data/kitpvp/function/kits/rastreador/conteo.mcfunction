scoreboard players add @s Rastreador 1
execute if score @s Rastreador matches 2 run tag @s add rastreando
execute if score @s Rastreador matches 2 run execute anchored eyes facing entity @r[tag=!rastreando,gamemode=adventure,distance=..100] eyes run function kitpvp:kits/rastreador/rayo
execute if score @s Rastreador matches 2 unless entity @a[tag=rastreado] run title @s actionbar {"text": "Ningun enemigo a una distancia de 100m","color": "red"}
execute if score @s Rastreador matches 2 run scoreboard players set @s Operacion 2
execute if score @s Rastreador matches 2 run scoreboard players operation @s Alcance-Bala /= @s Operacion
execute if score @s Rastreador matches 2 if entity @a[tag=rastreado] run title @s actionbar [{"text":"Localizado a ","bold":false,"color":"gold"},{"text":"","extra":[{"selector":"@a[tag=rastreado,limit=1]"}],"bold":true,"color":"green"},{"text":" a una distancia de ","bold":false,"color":"gold"},{"score":{"objective":"Alcance-Bala","name":"@s"},"color": "gold","bold": true},{"text":" metros","bold":false,"color":"gold"}]
execute if score @s Rastreador matches 2 run scoreboard players reset @s Operacion
execute if score @s Rastreador matches 2 run scoreboard players reset @s Alcance-Bala
execute if score @s Rastreador matches 2 run tag @a remove rastreado
execute if score @s Rastreador matches 2 run tag @s remove yarastreo
execute if score @s Rastreador matches 2 run tag @s remove rastreando
execute if score @s Rastreador matches 40.. run scoreboard players reset @s Rastreador