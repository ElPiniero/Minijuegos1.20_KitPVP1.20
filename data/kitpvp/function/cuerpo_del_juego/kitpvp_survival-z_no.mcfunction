execute if block 9 231 140 lime_concrete run playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.8
execute if block 9 231 140 lime_concrete run setblock 9 231 140 yellow_concrete
function kitpvp:cuerpo_del_juego/votos/survival-z/desactivando
setblock 10 231 140 air
setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/votos/survival-z/s-z_en_contra"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}