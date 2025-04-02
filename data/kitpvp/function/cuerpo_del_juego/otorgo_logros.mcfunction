gamerule announceAdvancements false
advancement grant @a[tag=!sesion_no_iniciada] only kitpvp:kitpvp/kitpvp
$execute if data storage jugador.$(id) {KitPVP:{Logros:{gente_sofisticada:1b}}} run advancement grant @s only kitpvp:kitpvp/gente_sofisticada
$execute if data storage jugador.$(id) {KitPVP:{Logros:{primer_kit:1b}}} run advancement grant @s only kitpvp:kitpvp/primer_kit
$execute if data storage jugador.$(id) {KitPVP:{Logros:{200bm:1b}}} run advancement grant @s only kitpvp:kitpvp/pvp/200bm
$execute if data storage jugador.$(id) {KitPVP:{Logros:{20_bajas:1b}}} run advancement grant @s only kitpvp:kitpvp/pvp/20_bajas
$execute if data storage jugador.$(id) {KitPVP:{Logros:{2_bajas:1b}}} run advancement grant @s only kitpvp:kitpvp/pvp/2_bajas
$execute if data storage jugador.$(id) {KitPVP:{Logros:{42_bajas:1b}}} run advancement grant @s only kitpvp:kitpvp/pvp/42_bajas
#execute as @a[scores={LOGRO_especialista_1-8=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_1-8
#execute as @a[scores={LOGRO_especialista_cde=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_cde
#execute as @a[scores={LOGRO_especialista_cdn=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_cdn
#execute as @a[scores={LOGRO_especialista_cdo=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_cdo
#execute as @a[scores={LOGRO_especialista_creeper=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_creeper
#execute as @a[scores={LOGRO_especialista_doctor=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_doctor
#execute as @a[scores={LOGRO_especialista_elite=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_elite
#execute as @a[scores={LOGRO_especialista_enderman=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_enderman
#execute as @a[scores={LOGRO_especialista_faraon=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_faraon
#execute as @a[scores={LOGRO_especialista_militar=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_militar
#execute as @a[scores={LOGRO_especialista_nexo=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_nexo
#execute as @a[scores={LOGRO_especialista_poseidon=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_poseidon
#execute as @a[scores={LOGRO_especialista_quetzal=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_quetzal
#execute as @a[scores={LOGRO_especialista_sicario=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_sicario
#execute as @a[scores={LOGRO_especialista_stray=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_stray
#execute as @a[scores={LOGRO_especialista_tecnico=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_tecnico
#execute as @a[scores={LOGRO_especialista_zorro=1}] run advancement grant @s only kitpvp:kitpvp/pvp/especialista_zorro
$execute if data storage jugador.$(id) {KitPVP:{Logros:{cuarta_horda:1b}}} run advancement grant @s only kitpvp:kitpvp/zombis/cuarta_horda
$execute if data storage jugador.$(id) {KitPVP:{Logros:{juego_completo:1b}}} run advancement grant @s only kitpvp:kitpvp/zombis/juego_completo
$execute if data storage jugador.$(id) {KitPVP:{Logros:{quinta_horda:1b}}} run advancement grant @s only kitpvp:kitpvp/zombis/quinta_horda
$execute if data storage jugador.$(id) {KitPVP:{Logros:{segunda_horda:1b}}} run advancement grant @s only kitpvp:kitpvp/zombis/segunda_horda
$execute if data storage jugador.$(id) {KitPVP:{Logros:{tercera_horda:1b}}} run advancement grant @s only kitpvp:kitpvp/zombis/tercera_horda
$execute if data storage jugador.$(id) {KitPVP:{Logros:{zombis:1b}}} run advancement grant @s only kitpvp:kitpvp/zombis/zombis
gamerule announceAdvancements true