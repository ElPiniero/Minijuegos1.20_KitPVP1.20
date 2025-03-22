playsound block.respawn_anchor.charge master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0
team join Supervivientes @s
attribute @s[tag=!Tropa_Escuadron] max_health base set 500
data modify entity @s[tag=!Tropa_Escuadron] Health set value 500
attribute @s[tag=Tropa_Escuadron] max_health base set 200
data modify entity @s[tag=Tropa_Escuadron] Health set value 200
attribute @s movement_speed base set 0.45
data merge entity @s {DeathLootTable:"kitpvp:entities/zombi"}
effect give @s[tag=!Tropa_Escuadron] strength infinite 30 true
effect give @s[tag=Tropa_Escuadron] strength infinite 10 true
tag @s add Golem