execute if block 60 80 -16 oak_button[face=wall,facing=west,powered=true] unless block 61 80 -16 magenta_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/reinicio
execute if block 60 80 -16 oak_button[face=wall,facing=west,powered=true] if block 61 80 -16 magenta_concrete run fill 61 80 -17 61 80 -15 lime_concrete
execute if block 60 79 -16 oak_button[face=wall,facing=west,powered=true] unless block 61 79 -16 orange_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/reinicio
execute if block 60 79 -16 oak_button[face=wall,facing=west,powered=true] if block 61 79 -16 orange_concrete run fill 61 79 -17 61 79 -15 lime_concrete
execute if block 60 78 -16 oak_button[face=wall,facing=west,powered=true] unless block 61 78 -16 red_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/reinicio
execute if block 60 78 -16 oak_button[face=wall,facing=west,powered=true] if block 61 78 -16 red_concrete run fill 61 78 -17 61 78 -15 lime_concrete
execute if block 61 78 -16 lime_concrete if block 61 80 -16 lime_concrete if block 61 79 -16 lime_concrete run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/disparo
setblock 60 80 -16 oak_button[face=wall,facing=west,powered=false]
setblock 60 79 -16 oak_button[face=wall,facing=west,powered=false]
setblock 60 78 -16 oak_button[face=wall,facing=west,powered=false]

execute positioned 61 80 -17 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 80 -16 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 80 -15 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 79 -17 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 79 -16 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 79 -15 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 78 -17 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 78 -16 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque
execute positioned 61 78 -15 run function kitpvp:cuerpo_del_juego/materiales_mapa/soriana/bloque