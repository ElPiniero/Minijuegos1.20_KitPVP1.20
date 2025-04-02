$execute unless data storage jugador.$(id) {KitPVP:{Ingresado:1b}} run tag @s add primeringresowey
execute as @s[tag=!primeringresowey] run return fail
effect give @s darkness 10 0 true
function kitpvp:cuerpo_del_juego/intro/reinicio
function kitpvp:cuerpo_del_juego/intro/inicio

scoreboard players set @s Musica 1
effect give @s invisibility infinite 0 true
tp @s 14 220 140 -90 -25
tag @s add sesion_no_iniciada
playsound block.smithing_table.use master @s ~ ~ ~ 1 0 1
playsound block.beacon.activate master @s ~ ~ ~ 1 0 1
playsound block.beacon.activate master @s ~ ~ ~ 1 0 1
playsound block.beacon.activate master @s ~ ~ ~ 1 0 1
playsound block.beacon.activate master @s ~ ~ ~ 1 0 1
scoreboard players enable @s kitpvp