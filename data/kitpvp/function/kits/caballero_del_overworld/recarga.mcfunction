give @s[tag=!survival-ejecutandose] golden_apple 10
give @s[tag=!survival-ejecutandose] cooked_porkchop 16
give @s potion[minecraft:potion_contents={potion:"long_strength"},max_stack_size=2] 2
give @s potion[minecraft:potion_contents={potion:"long_swiftness"},max_stack_size=2] 2
execute as @s[tag=!supervivencia-z] run give @s splash_potion[minecraft:custom_name='[{"text":"Pocion arrojadiza de lentitud","italic":false}]',minecraft:potion_contents={custom_color:3486017,custom_effects:[{amplifier:3,duration:1800,id:"minecraft:slowness",show_particles:1b}]},max_stack_size=5] 5
execute as @s[tag=supervivencia-z] run give @s splash_potion[minecraft:custom_name='[{"text":"Pocion arrojadiza de lentitud","italic":false}]',minecraft:potion_contents={custom_color:3486017,custom_effects:[{amplifier:6,duration:1800,id:"minecraft:slowness",show_particles:1b}]},max_stack_size=5] 5
give @s enchanted_golden_apple
give @s totem_of_undying
give @s totem_of_undying
give @s arrow 64
give @s arrow 64
execute if score @s Racha matches 12 run give @s[tag=!survival-ejecutandose] golden_apple 10
execute if score @s Racha matches 12 run give @s[tag=!survival-ejecutandose] cooked_porkchop 16
execute if score @s Racha matches 12 run give @s potion[minecraft:potion_contents={potion:"long_strength"},max_stack_size=2] 2
execute if score @s Racha matches 12 run give @s potion[minecraft:potion_contents={potion:"long_swiftness"},max_stack_size=2] 2
execute if score @s Racha matches 12 run execute as @s[tag=!supervivencia-z] run give @s potion[minecraft:custom_name='{"text":"Pocion arrojadiza de lentitud","italic":false}',minecraft:potion_contents={custom_color:3486017,custom_effects:[{amplifier:3,duration:1800,id:"minecraft:slowness",show_particles:1b}]},max_stack_size=5] 5
execute if score @s Racha matches 12 run execute as @s[tag=supervivencia-z] run give @s potion[minecraft:custom_name='{"text":"Pocion arrojadiza de lentitud","italic":false}',minecraft:potion_contents={custom_color:3486017,custom_effects:[{amplifier:6,duration:1800,id:"minecraft:slowness",show_particles:1b}]},max_stack_size=5] 5
execute if score @s Racha matches 12 run give @s enchanted_golden_apple
execute if score @s Racha matches 12 run give @s totem_of_undying
execute if score @s Racha matches 12 run give @s totem_of_undying
execute if score @s Racha matches 12 run give @s arrow 64
execute if score @s Racha matches 12 run give @s arrow 64
execute if score @s Racha matches 30.. run give @s[tag=!survival-ejecutandose] golden_apple 10
execute if score @s Racha matches 30.. run give @s[tag=!survival-ejecutandose] cooked_porkchop 16
execute if score @s Racha matches 30.. run give @s potion[minecraft:potion_contents={potion:"long_strength"},max_stack_size=2] 2
execute if score @s Racha matches 30.. run give @s potion[minecraft:potion_contents={potion:"long_swiftness"},max_stack_size=2] 2
execute if score @s Racha matches 30.. run execute as @s[tag=!supervivencia-z] run give @s potion[minecraft:custom_name='{"text":"Pocion arrojadiza de lentitud","italic":false}',minecraft:potion_contents={custom_color:3486017,custom_effects:[{amplifier:3,duration:1800,id:"minecraft:slowness",show_particles:1b}]},max_stack_size=5] 5
execute if score @s Racha matches 30.. run execute as @s[tag=supervivencia-z] run give @s potion[minecraft:custom_name='{"text":"Pocion arrojadiza de lentitud","italic":false}',minecraft:potion_contents={custom_color:3486017,custom_effects:[{amplifier:6,duration:1800,id:"minecraft:slowness",show_particles:1b}]},max_stack_size=5] 5
execute if score @s Racha matches 30.. run give @s enchanted_golden_apple
execute if score @s Racha matches 30.. run give @s totem_of_undying
execute if score @s Racha matches 30.. run give @s totem_of_undying
execute if score @s Racha matches 30.. run give @s arrow 64
execute if score @s Racha matches 30.. run give @s arrow 64
tellraw @s[tag=!survival-ejecutandose] [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"R","color":"#45fa45"},{"text":"e","color":"#4bf74b"},{"text":"c","color":"#51f451"},{"text":"a","color":"#57f157"},{"text":"r","color":"#5dee5d"},{"text":"g","color":"#63eb63"},{"text":"a","color":"#69e869"},{"text":"n","color":"#6fe56f"},{"text":"d","color":"#75e275"},{"text":"o ","color":"#7bdf7b"},{"text":"t","color":"#81dc81"},{"text":"u","color":"#87d987"},{"text":"s ","color":"#8dd68d"},{"text":"c","color":"#93d393"},{"text":"o","color":"#99d099"},{"text":"n","color":"#9fcd9f"},{"text":"s","color":"#a5caa5"},{"text":"u","color":"#abc7ab"},{"text":"m","color":"#b1c4b1"},{"text":"i","color":"#b7c1b7"},{"text":"b","color":"gray"},{"text":"l","color":"#b7c1c1"},{"text":"e","color":"#b1c4c4"},{"text":"s ","color":"#abc7c7"},{"text":"p","color":"#a5caca"},{"text":"o","color":"#9fcdcd"},{"text":"r ","color":"#99d0d0"},{"text":"u","color":"#93d3d3"},{"text":"n","color":"#8dd6d6"},{"text":"a ","color":"#87d9d9"},{"text":"r","color":"#81dcdc"},{"text":"a","color":"#7bdfdf"},{"text":"c","color":"#75e2e2"},{"text":"h","color":"#6fe5e5"},{"text":"a ","color":"#69e8e8"},{"text":"d","color":"#63ebeb"},{"text":"e ","color":"#5deeee"},{"score":{"objective":"Racha","name":"@s"},"color": "gold","bold": true},{"text":" b","color":"#57f1f1"},{"text":"a","color":"#51f4f4"},{"text":"j","color":"#4bf7f7"},{"text":"a","color":"#45fafa"},{"text":"s","color":"aqua"}]
tellraw @s[tag=survival-ejecutandose] [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"R","color":"#49f849"},{"text":"e","color":"#54f354"},{"text":"c","color":"#5eee5e"},{"text":"a","color":"#69e869"},{"text":"r","color":"#73e373"},{"text":"g","color":"#7ede7e"},{"text":"a","color":"#89d889"},{"text":"n","color":"#93d393"},{"text":"d","color":"#9ece9e"},{"text":"o ","color":"#a8c8a8"},{"text":"t","color":"#b3c3b3"},{"text":"u","color":"gray"},{"text":"s ","color":"#b3c3c3"},{"text":"c","color":"#a8c8c8"},{"text":"o","color":"#9ecece"},{"text":"n","color":"#93d3d3"},{"text":"s","color":"#89d8d8"},{"text":"u","color":"#7edede"},{"text":"m","color":"#73e3e3"},{"text":"i","color":"#69e8e8"},{"text":"b","color":"#5eeeee"},{"text":"l","color":"#54f3f3"},{"text":"e","color":"#49f8f8"},{"text":"s","color":"aqua"}]