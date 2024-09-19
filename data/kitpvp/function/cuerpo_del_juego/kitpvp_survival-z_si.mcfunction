execute if block 9 231 140 light_gray_concrete run playsound block.lever.click master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 1
execute if block 9 231 140 light_gray_concrete run title @p actionbar {"text": "Una modalidad extra del KitPVP donde tendras que sobrevivir a las hordas de zombis hasta un tiempo delimitado","color": "light_purple"}
execute if block 9 231 140 light_gray_concrete run setblock 9 231 140 yellow_concrete
function kitpvp:cuerpo_del_juego/votos/survival-z/activando
setblock 10 231 140 air
setblock 10 231 140 dark_oak_wall_sign[facing=east,waterlogged=false]{front_text:{messages:['{"clickEvent":{"action":"run_command","value":"/function kitpvp:cuerpo_del_juego/votos/survival-z/s-z_a_favor"},"text":""}','{"bold":true,"color":"dark_red","text":"SUPERVIVENCIA"}','{"bold":true,"color":"dark_gray","text":"ZOMBIS"}','{"text":""}']}}