function kitpvp:cuerpo_del_juego/limpieza
stopsound @a
schedule clear kitpvp:solitario/hordas/derrota
tag @a[tag=!sesion_no_iniciada] remove survival-ejecutandose
scoreboard players reset #supervivencia-zombis ZombieBuff
scoreboard objectives add joinGameKit dummy
tag @a[tag=!sesion_no_iniciada] add KitPVP
stopsound @a[tag=!sesion_no_iniciada] master music_disc.strad
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
stopsound @a master music.creative
function kitpvp:cuerpo_del_juego/scores
scoreboard players set @a[tag=!sesion_no_iniciada] joinGameKit 1
tag @a[tag=!sesion_no_iniciada] add zona_de_kits
execute positioned -4 235 143 run function kitpvp:cuerpo_del_juego/carteles/modo_de_pvp/eliminacion