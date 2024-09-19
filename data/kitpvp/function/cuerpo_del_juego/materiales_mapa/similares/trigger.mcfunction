execute unless block -149 94 -51 oak_button[face=wall,facing=east,powered=true] run setblock -150 94 -51 light_blue_concrete
execute if block -149 94 -51 oak_button[face=wall,facing=east,powered=true] run setblock -150 94 -51 red_concrete
execute unless block -149 94 -52 oak_button[face=wall,facing=east,powered=true] run setblock -150 94 -52 light_blue_concrete
execute if block -149 94 -52 oak_button[face=wall,facing=east,powered=true] run setblock -150 94 -52 red_concrete
execute unless block -149 94 -53 oak_button[face=wall,facing=east,powered=true] run setblock -150 94 -53 light_blue_concrete
execute if block -149 94 -53 oak_button[face=wall,facing=east,powered=true] run setblock -150 94 -53 red_concrete
execute unless block -149 93 -51 oak_button[face=wall,facing=east,powered=true] run setblock -150 93 -51 light_blue_concrete
execute if block -149 93 -51 oak_button[face=wall,facing=east,powered=true] run setblock -150 93 -51 red_concrete
execute unless block -149 93 -52 oak_button[face=wall,facing=east,powered=true] run setblock -150 93 -52 light_blue_concrete
execute if block -149 93 -52 oak_button[face=wall,facing=east,powered=true] run setblock -150 93 -52 red_concrete
execute unless block -149 93 -53 oak_button[face=wall,facing=east,powered=true] run setblock -150 93 -53 light_blue_concrete
execute if block -149 93 -53 oak_button[face=wall,facing=east,powered=true] run setblock -150 93 -53 red_concrete

execute if block -149 94 -51 oak_button[face=wall,facing=east,powered=true] if block -149 94 -52 oak_button[face=wall,facing=east,powered=true] if block -149 94 -53 oak_button[face=wall,facing=east,powered=true] if block -149 93 -51 oak_button[face=wall,facing=east,powered=true] if block -149 93 -52 oak_button[face=wall,facing=east,powered=true] if block -149 93 -53 oak_button[face=wall,facing=east,powered=true] run function kitpvp:cuerpo_del_juego/materiales_mapa/similares/disparo