scoreboard players set @s[tag=!powered] Conteo 9
tag @s add powered
scoreboard players add @s Conteo 2
execute if predicate kitpvp:30 run scoreboard players add @s Conteo 1
data merge storage supervivencia-z {Tridente:{Potencia:0}}
execute store result storage supervivencia-z Tridente.Potencia int 1 run scoreboard players get @s Conteo
function kitpvp:kits/poseidon/tridente/filo with storage supervivencia-z Tridente