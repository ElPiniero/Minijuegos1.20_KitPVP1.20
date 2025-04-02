data merge storage modo_de_pvp {Id_de_usuario:{id:0}}
execute store result storage modo_de_pvp Id_de_usuario.id int 1 run scoreboard players get @s INESoldado
function kitpvp:cuerpo_del_juego/otorgo_logros with storage modo_de_pvp Id_de_usuario
tag @s add logros_otorgados