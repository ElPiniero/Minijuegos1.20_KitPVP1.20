stopsound @a
schedule clear kitpvp:solitario/hordas/derrota
tag @a[tag=!sesion_no_iniciada] remove survival-ejecutandose
scoreboard players reset #supervivencia-zombis ZombieBuff
scoreboard objectives add joinGameKit dummy
tag @a[tag=!sesion_no_iniciada] add KitPVP
stopsound @a[tag=!sesion_no_iniciada] master music_disc.strad
schedule function kitpvp:cuerpo_del_juego/anuncio_ayuda_publicidad 1800
setworldspawn -56 71 -24
gamerule keepInventory true
gamerule doDaylightCycle false
gamerule showDeathMessages true
gamerule naturalRegeneration true
difficulty hard
gamerule doImmediateRespawn true
weather thunder 999999d
time set 13300
tag @a[tag=!sesion_no_iniciada] remove aldea_podrida
stopsound @a[tag=!sesion_no_iniciada] master music.nether.soul_sand_valley
stopsound @a[tag=!sesion_no_iniciada] master music_disc.13
function kitpvp:cuerpo_del_juego/otorgar_logros
schedule clear kitpvp:solitario/hordas/derrota
function kitpvp:cuerpo_del_juego/limpieza
setblock 10 232 140 minecraft:dark_oak_wall_sign[facing=east,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"black",has_glowing_text:0b,messages:['""','{"color":"light_purple","text":"Configuracion de"}','{"extra":[{"color":"light_purple","obfuscated":true,"text":"|"},{"bold":true,"color":"light_purple","text":" Kit PVP"},{"color":"light_purple","obfuscated":true,"text":" |"}],"text":""}','""']},is_waxed:0b}
stopsound @a master music.creative
function kitpvp:cuerpo_del_juego/scores
scoreboard players set @a[tag=!sesion_no_iniciada] joinGameKit 1
tag @a[tag=!sesion_no_iniciada] add zona_de_kits
function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/eliminacion
function kitpvp:cuerpo_del_juego/musica/musica
function kitpvp:cuerpo_del_juego/ambiente
function kitpvp:cuerpo_del_juego/entidades-trampa
function kitpvp:cuerpo_del_juego/materiales_cortos
#tellraw @a[tag=!sesion_no_iniciada] {"text": "Funcionando","color": "gold"}