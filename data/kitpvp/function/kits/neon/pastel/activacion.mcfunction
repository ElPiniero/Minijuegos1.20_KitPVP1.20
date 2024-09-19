scoreboard players operation #ine-pastel INESoldado = @s INESoldado
execute rotated ~ 0 run summon block_display ^ ^1.5 ^.5 {Tags:["Pastel","sin_disparar"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.5f,-.75f,-.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:cake"}}
execute rotated ~ 0 positioned ^ ^1.5 ^.5 run scoreboard players operation @e[type=block_display,tag=Pastel,sort=nearest,limit=1,distance=..1] INESoldado = @s INESoldado
playsound block.wool.place master @a ~ ~ ~ 1