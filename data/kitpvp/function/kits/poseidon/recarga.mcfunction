give @s[tag=!supervivencia-z] cooked_cod 16
give @s potion[minecraft:custom_name='{"italic":false,"text":"Pocion de Regeneracion"}',minecraft:potion_contents={custom_color:12741355,custom_effects:[{id:"minecraft:regeneration",amplifier:4,duration:600,show_particles:1b}]},max_stack_size=4] 4
give @s potion[potion_contents="long_night_vision"]
give @s potion[custom_name='[{"text":"Pocion de Resistencia","italic":false}]',potion_contents={custom_color:13535560,custom_effects:[{id:"minecraft:resistance",duration:9600,amplifier:1,show_particles:1b}]}]
execute if score @s Racha matches 12 run give @s[tag=!supervivencia-z] cooked_cod 16
execute if score @s Racha matches 12 run give @s potion[minecraft:custom_name='{"italic":false,"text":"Pocion de Regeneracion"}',minecraft:potion_contents={custom_color:12741355,custom_effects:[{id:"minecraft:regeneration",amplifier:4,duration:600,show_particles:1b}]},max_stack_size=4] 4
execute if score @s Racha matches 12 run give @s potion[potion_contents="long_night_vision"]
execute if score @s Racha matches 12 run give @s potion[custom_name='[{"text":"Pocion de Resistencia","italic":false}]',potion_contents={custom_color:13535560,custom_effects:[{id:"minecraft:resistance",duration:9600,amplifier:1,show_particles:1b}]}]
execute if score @s Racha matches 30.. run give @s[tag=!supervivencia-z] cooked_cod 16
execute if score @s Racha matches 30.. run give @s potion[minecraft:custom_name='{"italic":false,"text":"Pocion de Regeneracion"}',minecraft:potion_contents={custom_color:12741355,custom_effects:[{id:"minecraft:regeneration",amplifier:4,duration:600,show_particles:1b}]},max_stack_size=4] 4
execute if score @s Racha matches 30.. run give @s potion[potion_contents="long_night_vision"]
execute if score @s Racha matches 30.. run give @s potion[custom_name='[{"text":"Pocion de Resistencia","italic":false}]',potion_contents={custom_color:13535560,custom_effects:[{id:"minecraft:resistance",duration:9600,amplifier:1,show_particles:1b}]}]
tellraw @s[tag=!survival-ejecutandose] [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"R","color":"#0cc1c1"},{"text":"e","color":"#18c4c4"},{"text":"c","color":"#24c7c7"},{"text":"a","color":"#30caca"},{"text":"r","color":"#3ccdcd"},{"text":"g","color":"#48d0d0"},{"text":"a","color":"#55d3d3"},{"text":"n","color":"#61d6d6"},{"text":"d","color":"#6dd9d9"},{"text":"o ","color":"#79dcdc"},{"text":"t","color":"#85e0e0"},{"text":"u","color":"#91e3e3"},{"text":"s ","color":"#9de6e6"},{"text":"c","color":"#aae9e9"},{"text":"o","color":"#b6ecec"},{"text":"n","color":"#c2efef"},{"text":"s","color":"#cef2f2"},{"text":"u","color":"#daf5f5"},{"text":"m","color":"#e6f8f8"},{"text":"i","color":"#f2fbfb"},{"text":"b","color":"white"},{"text":"l","color":"#fffff2"},{"text":"e","color":"#ffffe6"},{"text":"s ","color":"#ffffda"},{"text":"p","color":"#ffffce"},{"text":"o","color":"#ffffc2"},{"text":"r ","color":"#ffffb6"},{"text":"u","color":"#ffffaa"},{"text":"n","color":"#ffff9d"},{"text":"a ","color":"#ffff91"},{"text":"r","color":"#ffff85"},{"text":"a","color":"#ffff79"},{"text":"c","color":"#ffff6d"},{"text":"h","color":"#ffff61"},{"text":"a ","color":"#ffff54"},{"text":"d","color":"#ffff48"},{"text":"e ","color":"#ffff3c"},{"score":{"objective":"Racha","name":"@s"},"color": "green","bold": true},{"text":" b","color":"#ffff30"},{"text":"a","color":"#ffff24"},{"text":"j","color":"#ffff18"},{"text":"a","color":"#ffff0c"},{"text":"s","color":"#ffff00"}]
tellraw @s[tag=survival-ejecutandose] [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"R","color":"#15c3c3"},{"text":"e","color":"#2ac8c8"},{"text":"c","color":"#3fcece"},{"text":"a","color":"#55d3d3"},{"text":"r","color":"#6ad9d9"},{"text":"g","color":"#7fdede"},{"text":"a","color":"#94e3e3"},{"text":"n","color":"#aae9e9"},{"text":"d","color":"#bfeeee"},{"text":"o ","color":"#d4f4f4"},{"text":"t","color":"#e9f9f9"},{"text":"u","color":"white"},{"text":"s ","color":"#ffffe9"},{"text":"c","color":"#ffffd4"},{"text":"o","color":"#ffffbf"},{"text":"n","color":"#ffffaa"},{"text":"s","color":"#ffff94"},{"text":"u","color":"#ffff7f"},{"text":"m","color":"#ffff6a"},{"text":"i","color":"#ffff54"},{"text":"b","color":"#ffff3f"},{"text":"l","color":"#ffff2a"},{"text":"e","color":"#ffff15"},{"text":"s","color":"#ffff00"}]