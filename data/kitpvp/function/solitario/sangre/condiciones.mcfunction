scoreboard players set #sangron Conteo 1
execute if predicate kitpvp:quemandose run scoreboard players set #sangron Conteo 0
execute if predicate kitpvp:efecto-salud run scoreboard players set #sangron Conteo 0
execute if predicate kitpvp:efecto-wither run scoreboard players set #sangron Conteo 0
execute on attacker if entity @s[advancements={kitpvp:kitpvp/golpe=true}] run scoreboard players set #sangron Conteo 1
execute on attacker if entity @s[advancements={kitpvp:kitpvp/golpe=true}] run advancement revoke @s only kitpvp:kitpvp/golpe
execute on attacker if entity @s[type=!player] run scoreboard players set #sangron Conteo 1
execute if score #sangron Conteo matches 1 run function kitpvp:solitario/sangre/sangre