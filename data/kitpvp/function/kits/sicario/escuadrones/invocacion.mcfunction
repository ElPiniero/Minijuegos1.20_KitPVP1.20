data merge storage sicarios {sicario:{sicario:0}}
execute store result storage sicarios sicario.sicario int 1 run scoreboard players get @s INESoldado

execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~ run function kitpvp:kits/sicario/escuadrones/select_invocacion with storage sicarios sicario
execute as @s[tag=!supervivencia-z] positioned ~ ~-2 ~1 run function kitpvp:kits/sicario/escuadrones/select_invocacion with storage sicarios sicario
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~-1 run function kitpvp:kits/sicario/escuadrones/select_invocacion with storage sicarios sicario

execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~ run summon iron_golem ~ ~ ~ {Tags:["Tropa_Escuadron","nuevo"],NoAI:1b,Invulnerable:1b,PlayerCreated:1b}
execute as @s[tag=supervivencia-z] positioned ~ ~-2 ~1 run summon iron_golem ~ ~ ~ {Tags:["Tropa_Escuadron","nuevo"],NoAI:1b,Invulnerable:1b,PlayerCreated:1b}
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~-1 run summon iron_golem ~ ~ ~ {Tags:["Tropa_Escuadron","nuevo"],NoAI:1b,Invulnerable:1b,PlayerCreated:1b}

execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players operation @n[type=skeleton,tag=Tropa_Escuadron,tag=nuevo] INESoldado = @s INESoldado
execute as @s[tag=!supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players operation @n[type=skeleton,tag=Tropa_Escuadron,tag=nuevo] INESoldado = @s INESoldado
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players operation @n[type=skeleton,tag=Tropa_Escuadron,tag=nuevo] INESoldado = @s INESoldado
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players add @n[type=skeleton,tag=Tropa_Escuadron,tag=nuevo] Animacion 1
execute as @s[tag=!supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players add @n[type=skeleton,tag=Tropa_Escuadron,tag=nuevo] Animacion 1
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players add @n[type=skeleton,tag=Tropa_Escuadron,tag=nuevo] Animacion 1

execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players operation @n[type=iron_golem,tag=Tropa_Escuadron,tag=nuevo] INESoldado = @s INESoldado
execute as @s[tag=supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players operation @n[type=iron_golem,tag=Tropa_Escuadron,tag=nuevo] INESoldado = @s INESoldado
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players operation @n[type=iron_golem,tag=Tropa_Escuadron,tag=nuevo] INESoldado = @s INESoldado
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players add @n[type=iron_golem,tag=Tropa_Escuadron,tag=nuevo] Animacion 1
execute as @s[tag=supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players add @n[type=iron_golem,tag=Tropa_Escuadron,tag=nuevo] Animacion 1
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players add @n[type=iron_golem,tag=Tropa_Escuadron,tag=nuevo] Animacion 1

tag @e[type=skeleton,tag=Tropa_Escuadron,tag=nuevo] remove nuevo
tag @e[type=iron_golem,tag=Tropa_Escuadron,tag=nuevo] remove nuevo
clear @s goat_horn 1
scoreboard players reset @s Llamar_Escuadron