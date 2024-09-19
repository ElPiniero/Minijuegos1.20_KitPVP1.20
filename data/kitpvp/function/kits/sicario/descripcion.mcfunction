#give @p crimson_sign{BlockEntityTag:{front_text:{has_glowing_text:0b,messages:['{"text":""}','[{"clickEvent":{"action":"run_command","value":"function kitpvp:kits/sicario/descripcion"},"text":"S","color":"red","bold":true},{"text":"I","color":"#e86969"},{"text":"C","color":"#d39393"},{"text":"A","color":"gray"},{"text":"R","color":"#d3d3d3"},{"text":"I","color":"#e9e9e9"},{"text":"O","color":"white"}]','{"text":""}','{"text":""}']}}}
playsound entity.vindicator.ambient master @s ~ ~ ~ 1
tellraw @s [{"text":"S","color":"red","bold": true},{"text":"I","color":"#e86969"},{"text":"C","color":"#d39393"},{"text":"A","color":"gray"},{"text":"R","color":"#d3d3d3"},{"text":"I","color":"#e9e9e9"},{"text":"O","color":"white"}]
tellraw @s {"text": "ARMADURA:", "color": "white","bold": true}
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Cabeza de Sicario","color": "dark_purple","bold": false},{"text": ", Proteccion IV","color": "aqua","bold": false},{"text": ", Salud Maxima I, Regeneracion I","color": "blue","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Pechera de Cuero","color": "gold","bold": false},{"text": ", Proteccion V","color": "aqua","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Pantalones de Netherite","color": "gold","bold": false},{"text": ", Proteccion IV","color": "aqua","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Botas de Netherite","color": "gold","bold": false},{"text": ", Proteccion III","color": "aqua","bold": false}]
tellraw @s {"text": "ARMAMENTO:", "color": "white","bold": true}
tellraw @s[tag=!supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "Espada de Hierro","color": "gold","bold": false},{"text": ", Filo V, Empuje I","color": "aqua","bold": false}]
tellraw @s[tag=supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "Espada de Hierro","color": "gold","bold": false},{"text": ", Filo XV, Barrido III, Empuje II","color": "aqua","bold": false}]
tellraw @s[tag=!supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "Hacha de Hierro","color": "gold","bold": false},{"text": ", Filo V","color": "aqua","bold": false}]
tellraw @s[tag=supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "Hacha de Hierro","color": "gold","bold": false},{"text": ", Filo XX","color": "aqua","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "2 Manzanas doradas encantadas","color": "light_purple","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "20 Bacalaos cocidos","color": "light_purple","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "5 Escuadrones","color": "light_purple","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "8 Perlas de ender","color": "yellow","bold": false}]
tellraw @s[tag=!supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "3 Pociones","color": "yellow","bold": false},{"text": ", Curacion instantanea IV","color": "blue","bold": false}]
tellraw @s[tag=supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "3 Pociones arrojadizas","color": "yellow","bold": false},{"text": ", Curacion instantanea IV","color": "blue","bold": false}]