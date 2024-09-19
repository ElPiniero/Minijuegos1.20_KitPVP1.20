#give @a[tag=!sesion_no_iniciada] crimson_sign{BlockEntityTag:{front_text:{has_glowing_text:0b,messages:['{"text":""}','[{"clickEvent":{"action":"run_command","value":"function kitpvp:kits/1.8/descripcion"},"text":""},{"text":"1","bold":true,"color":"dark_aqua"},{"text":".","bold":true,"color":"aqua"},{"text":"8","bold":true,"color":"gray"}]','{"text":""}','{"text":""}']}}}
playsound block.note_block.pling master @s[tag=!sesion_no_iniciada] ~ ~ ~ 1 1
tellraw @s [{"text":""},{"text":"1","bold":true,"color":"dark_aqua"},{"text":".","bold":true,"color":"aqua"},{"text":"8","bold":true,"color":"gray"}]
tellraw @s {"text": "ARMADURA:", "color": "white","bold": true}
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Casco de Cuero","color": "gold","bold": false},{"text": ", Proteccion IV","color": "aqua","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Pechera de Cuero","color": "gold","bold": false},{"text": ", Proteccion V","color": "aqua","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Pantalones de Cuero","color": "gold","bold": false},{"text": ", Proteccion IV","color": "aqua","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "Botas de Cuero","color": "gold","bold": false},{"text": ", Proteccion IV","color": "aqua","bold": false}]
tellraw @s {"text": "ARMAMENTO:", "color": "white","bold": true}
tellraw @s[tag=!supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "Cañazo +8 de daño","color": "light_purple","bold": false},{"text": ", Filo I","color": "aqua","bold": false}]
tellraw @s[tag=supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "Cañazo +8 de daño","color": "light_purple","bold": false},{"text": ", Castigo VII","color": "aqua","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "16 Bistecs","color": "gold","bold": false}]
tellraw @s[tag=!supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "5 Pociones arrojadizas","color": "gold","bold": false},{"text": ", Debilidad II","color": "blue","bold": false}]
tellraw @s[tag=supervivencia-z] [{"text": "- ","color": "dark_gray","bold": true},{"text": "5 Pociones arrojadizas","color": "gold","bold": false},{"text": ", Debilidad IV","color": "blue","bold": false}]
tellraw @s [{"text": "- ","color": "dark_gray","bold": true},{"text": "66 Pociones arrojadizas con amplificador","color": "yellow","bold": false},{"text": ", Curacion instantanea II","color": "blue","bold": false}]