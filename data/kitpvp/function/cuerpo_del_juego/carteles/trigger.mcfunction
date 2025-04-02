execute if entity @s[tag=modo-eliminacion] unless data storage modo_de_pvp {Modo:"eliminacion"} on target run function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/eliminacion
execute if entity @s[tag=modo-arena] unless data storage modo_de_pvp {Modo:"arena"} on target run function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/arena

execute if entity @s[tag=modo-zombis] unless data storage supervivencia-zombis {Activado:1b} if entity @a[tag=!sesion_no_iniciada,tag=s-z-afavor] on target run function kitpvp:cuerpo_del_juego/votos/survival-z/s-z_a_favor
execute if entity @s[tag=modo-zombis] unless data storage supervivencia-zombis {Activado:1b} unless entity @a[tag=!sesion_no_iniciada,tag=s-z-afavor] on target run function kitpvp:cuerpo_del_juego/votos/survival-z/activando
execute if entity @s[tag=modo-zombis] if data storage supervivencia-zombis {Activado:1b} if entity @a[tag=!sesion_no_iniciada,tag=s-z-encontra] unless entity @a[tag=!sesion_no_iniciada,tag=s-z-afavor] on target run function kitpvp:cuerpo_del_juego/votos/survival-z/s-z_en_contra
execute if entity @s[tag=modo-zombis] if data storage supervivencia-zombis {Activado:1b} unless entity @a[tag=!sesion_no_iniciada,tag=s-z-encontra] unless entity @a[tag=!sesion_no_iniciada,tag=s-z-afavor] on target run function kitpvp:cuerpo_del_juego/votos/survival-z/desactivando

execute if entity @s[tag=mapa-pueblo] unless data storage modo_de_pvp {Mapa:"pueblo"} on target run function kitpvp:cuerpo_del_juego/carteles/mapa/pueblo
execute if entity @s[tag=mapa-aldea] unless data storage modo_de_pvp {Mapa:"aldea"} on target run function kitpvp:cuerpo_del_juego/carteles/mapa/aldea
execute if entity @s[tag=mapa-habitacion] unless data storage modo_de_pvp {Mapa:"habitacion"} on target run function kitpvp:cuerpo_del_juego/carteles/mapa/habitacion

execute if entity @s[tag=info-eliminacion] on target run function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/info-eliminacion
execute if entity @s[tag=info-arena] on target run function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/info-arena
execute if entity @s[tag=info-zombis] on target run function kitpvp:cuerpo_del_juego/carteles/info-zombis

execute if entity @s[tag=zombis-facil] unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] unless entity @a[tag=!sesion_no_iniciada,tag=s-z-afavor] run function kitpvp:cuerpo_del_juego/carteles/facil
execute if entity @s[tag=zombis-normal] unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] unless entity @a[tag=!sesion_no_iniciada,tag=s-z-afavor] run function kitpvp:cuerpo_del_juego/carteles/normal
#execute if entity @s[tag=zombis-facil] unless entity @a[tag=en_votacion,tag=!sesion_no_iniciada] run function kitpvp:cuerpo_del_juego/carteles/facil

execute if entity @s[tag=info-zombis-facil] on target run function kitpvp:cuerpo_del_juego/carteles/info-facil
execute if entity @s[tag=info-zombis-normal] on target run function kitpvp:cuerpo_del_juego/carteles/info-normal
execute if entity @s[tag=info-zombis-dificil] on target run function kitpvp:cuerpo_del_juego/carteles/info-dificil

execute if entity @s[tag=Nexo,tag=activado] unless entity @n[type=block_display,tag=nexo_prendido,distance=...9] on target run function kitpvp:kits/nexo/nexos/carga
execute if entity @s[tag=Nexo,tag=activado] if entity @n[type=block_display,tag=nexo_prendido,distance=...9] on target run function kitpvp:kits/nexo/nexos/explosion
execute if entity @s[tag=Cerebro_Tumba] run function kitpvp:solitario/resucitado

execute if entity @s[tag=descripcion,tag=cadeov] on target run function kitpvp:kits/caballero_del_overworld/descripcion
execute if entity @s[tag=descripcion,tag=cadene] on target run function kitpvp:kits/caballero_del_nether/descripcion
execute if entity @s[tag=descripcion,tag=cadeen] on target run function kitpvp:kits/caballero_del_end/descripcion
execute if entity @s[tag=descripcion,tag=elite] on target run function kitpvp:kits/elite/descripcion
execute if entity @s[tag=descripcion,tag=1.8] on target run function kitpvp:kits/1.8/descripcion
execute if entity @s[tag=descripcion,tag=poseidon] on target run function kitpvp:kits/poseidon/descripcion
execute if entity @s[tag=descripcion,tag=tecnico] on target run function kitpvp:kits/tecnico/descripcion
execute if entity @s[tag=descripcion,tag=nexo] on target run function kitpvp:kits/nexo/descripcion
execute if entity @s[tag=descripcion,tag=stray] on target run function kitpvp:kits/stray/descripcion
execute if entity @s[tag=descripcion,tag=quetzal] on target run function kitpvp:kits/quetzal/descripcion
execute if entity @s[tag=descripcion,tag=enderman] on target run function kitpvp:kits/enderman/descripcion
execute if entity @s[tag=descripcion,tag=doctor] on target run function kitpvp:kits/doctor/descripcion
execute if entity @s[tag=descripcion,tag=faraon] on target run function kitpvp:kits/faraon/descripcion
execute if entity @s[tag=descripcion,tag=militar] on target run function kitpvp:kits/militar/descripcion
execute if entity @s[tag=descripcion,tag=creeper] on target run function kitpvp:kits/creeper/descripcion
execute if entity @s[tag=descripcion,tag=zorro] on target run function kitpvp:kits/zorro/descripcion
execute if entity @s[tag=descripcion,tag=sicario] on target run function kitpvp:kits/sicario/descripcion
execute if entity @s[tag=descripcion,tag=neon] on target run function kitpvp:kits/neon/descripcion

data remove entity @s interaction