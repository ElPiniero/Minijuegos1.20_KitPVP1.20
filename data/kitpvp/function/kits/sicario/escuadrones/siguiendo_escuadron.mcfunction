scoreboard players operation #ine-escuadron INESoldado = @s INESoldado
execute as @e[type=#kitpvp:escuadrones,tag=Tropa_Escuadron,distance=16..] if score @s INESoldado = #ine-escuadron INESoldado run tag @s add yameperdi
execute as @a[tag=Sicario,tag=!sesion_no_iniciada,gamemode=!spectator,tag=!Jugador_Zombi] at @s if score @s INESoldado = #ine-escuadron INESoldado run tp @e[type=#kitpvp:escuadrones,tag=Tropa_Escuadron,tag=yameperdi] @s
tag @e[type=#kitpvp:escuadrones,tag=Tropa_Escuadron,tag=yameperdi] remove yameperdi