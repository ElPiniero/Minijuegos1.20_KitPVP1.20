execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~ run function kitpvp:kits/sicario/escuadrones/select_invocacion
execute as @s[tag=!supervivencia-z] positioned ~ ~-2 ~1 run function kitpvp:kits/sicario/escuadrones/select_invocacion
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~-1 run function kitpvp:kits/sicario/escuadrones/select_invocacion
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~ run summon iron_golem ~ ~ ~ {Tags:["Tropa_Escuadron"],NoAI:1b,Invulnerable:1b,PlayerCreated:1b}
execute as @s[tag=supervivencia-z] positioned ~ ~-2 ~1 run summon iron_golem ~ ~ ~ {Tags:["Tropa_Escuadron"],NoAI:1b,Invulnerable:1b,PlayerCreated:1b}
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~-1 run summon iron_golem ~ ~ ~ {Tags:["Tropa_Escuadron"],NoAI:1b,Invulnerable:1b,PlayerCreated:1b}
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players operation @e[type=skeleton,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] INESoldado = @s INESoldado
execute as @s[tag=!supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players operation @e[type=skeleton,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] INESoldado = @s INESoldado
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players operation @e[type=skeleton,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] INESoldado = @s INESoldado
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players add @e[type=skeleton,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] Animacion 1
execute as @s[tag=!supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players add @e[type=skeleton,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] Animacion 1
execute as @s[tag=!supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players add @e[type=skeleton,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] Animacion 1
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players operation @e[type=iron_golem,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] INESoldado = @s INESoldado
execute as @s[tag=supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players operation @e[type=iron_golem,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] INESoldado = @s INESoldado
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players operation @e[type=iron_golem,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] INESoldado = @s INESoldado
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~ run scoreboard players add @e[type=iron_golem,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] Animacion 1
execute as @s[tag=supervivencia-z] positioned ~ ~-2 ~1 run scoreboard players add @e[type=iron_golem,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] Animacion 1
execute as @s[tag=supervivencia-z] positioned ~1 ~-2 ~-1 run scoreboard players add @e[type=iron_golem,tag=Tropa_Escuadron,distance=..1,sort=nearest,limit=1] Animacion 1
clear @s goat_horn 1
scoreboard players reset @s Llamar_Escuadron