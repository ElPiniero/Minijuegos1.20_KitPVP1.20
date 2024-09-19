execute unless block -28 88 -135 lever[face=wall,facing=south,powered=true] run setblock -28 88 -136 light_blue_concrete
execute if block -28 88 -135 lever[face=wall,facing=south,powered=true] run setblock -28 88 -136 red_concrete
execute unless block -27 88 -135 lever[face=wall,facing=south,powered=true] run setblock -27 88 -136 light_blue_concrete
execute if block -27 88 -135 lever[face=wall,facing=south,powered=true] run setblock -27 88 -136 red_concrete
execute unless block -28 87 -135 lever[face=wall,facing=south,powered=true] run setblock -28 87 -136 light_blue_concrete
execute if block -28 87 -135 lever[face=wall,facing=south,powered=true] run setblock -28 87 -136 red_concrete
execute unless block -28 86 -135 lever[face=wall,facing=south,powered=true] run setblock -28 86 -136 light_blue_concrete
execute if block -28 86 -135 lever[face=wall,facing=south,powered=true] run setblock -28 86 -136 red_concrete
execute unless block -29 86 -135 lever[face=wall,facing=south,powered=true] run setblock -29 86 -136 light_blue_concrete
execute if block -29 86 -135 lever[face=wall,facing=south,powered=true] run setblock -29 86 -136 red_concrete
execute unless block -29 88 -135 lever[face=wall,facing=south,powered=true] run setblock -29 88 -136 light_blue_concrete
execute if block -29 88 -135 lever[face=wall,facing=south,powered=true] run setblock -29 88 -136 red_concrete
execute unless block -29 87 -135 lever[face=wall,facing=south,powered=true] run setblock -29 87 -136 light_blue_concrete
execute if block -29 87 -135 lever[face=wall,facing=south,powered=true] run setblock -29 87 -136 red_concrete
execute unless block -27 87 -135 lever[face=wall,facing=south,powered=true] run setblock -27 87 -136 light_blue_concrete
execute if block -27 87 -135 lever[face=wall,facing=south,powered=true] run setblock -27 87 -136 red_concrete
execute unless block -27 86 -135 lever[face=wall,facing=south,powered=true] run setblock -27 86 -136 light_blue_concrete
execute if block -27 86 -135 lever[face=wall,facing=south,powered=true] run setblock -27 86 -136 red_concrete

execute if block -29 88 -136 light_blue_concrete if block -28 88 -136 red_concrete if block -27 88 -136 red_concrete if block -29 87 -136 light_blue_concrete if block -28 87 -136 red_concrete if block -27 87 -136 light_blue_concrete if block -29 86 -136 red_concrete if block -28 86 -136 red_concrete if block -27 86 -136 light_blue_concrete unless block -28 87 -136 lime_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/super_sanchez/disparo