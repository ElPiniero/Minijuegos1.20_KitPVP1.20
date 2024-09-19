scoreboard players reset @s Poseyendose
gamemode adventure @s
execute positioned as @e[type=interaction,sort=random,limit=1,tag=Zombi-spawn] run tp @s ~ ~ ~
title @s times 1 100 1
title @s subtitle [{"text":""},{"text":"C","bold":true,"color":"dark_red"},{"text":"a","bold":true,"color":"#b50404"},{"text":"z","bold":true,"color":"#ac0808"},{"text":"a ","bold":true,"color":"#a30d0d"},{"text":"a ","bold":true,"color":"#9a1111"},{"text":"l","bold":true,"color":"#921515"},{"text":"o","bold":true,"color":"#891a1a"},{"text":"s ","bold":true,"color":"#801e1e"},{"text":"s","bold":true,"color":"#772222"},{"text":"u","bold":true,"color":"#6f2727"},{"text":"p","bold":true,"color":"#662b2b"},{"text":"e","bold":true,"color":"#5d2f2f"},{"text":"r","bold":true,"color":"#543434"},{"text":"v","bold":true,"color":"#4c3838"},{"text":"iv","bold":true,"color":"#433c3c"},{"text":"e","bold":true,"color":"#4c3838"},{"text":"n","bold":true,"color":"#543434"},{"text":"t","bold":true,"color":"#5d2f2f"},{"text":"e","bold":true,"color":"#662b2b"},{"text":"s ","bold":true,"color":"#6f2727"},{"text":"r","bold":true,"color":"#772222"},{"text":"e","bold":true,"color":"#801e1e"},{"text":"s","bold":true,"color":"#891a1a"},{"text":"t","bold":true,"color":"#921515"},{"text":"a","bold":true,"color":"#9a1111"},{"text":"n","bold":true,"color":"#a30d0d"},{"text":"t","bold":true,"color":"#ac0808"},{"text":"e","bold":true,"color":"#b50404"},{"text":"s","bold":true,"color":"dark_red"}]
title @s title [{"text":""},{"text":"P","bold":true,"color":"dark_gray"},{"text":"O","bold":true,"color":"#692a2a"},{"text":"S","bold":true,"color":"#931515"},{"text":"E","bold":true,"color":"dark_red"},{"text":"I","bold":true,"color":"#931414"},{"text":"D","bold":true,"color":"#692a2a"},{"text":"O","bold":true,"color":"dark_gray"}]
team join Zombis
give @s warped_fungus_on_a_stick[custom_name='[{"text":"LLamar Oleada","italic":false,"color":"red","bold":true}]',lore=['[{"text":"Llama a que te siga","italic":false,"color":"gray"}]','[{"text":"una oleada zombi","italic":false,"color":"gray"}]']]
execute if data storage supervivencia-zombis {Horda:"1"} run effect give @s health_boost infinite 24 true
execute if data storage supervivencia-zombis {Horda:"1"} run effect give @s instant_health 1 10 true
execute if data storage supervivencia-zombis {Horda:"1"} run effect give @s jump_boost infinite 2 true
execute if data storage supervivencia-zombis {Horda:"1"} run effect give @s speed infinite 1 true
execute if data storage supervivencia-zombis {Horda:"1"} run effect give @s night_vision infinite 0 true
execute if data storage supervivencia-zombis {Horda:"1"} run effect give @s strength infinite 3 true

execute if data storage supervivencia-zombis {Horda:"2"} run effect give @s health_boost infinite 29 true
execute if data storage supervivencia-zombis {Horda:"2"} run effect give @s instant_health 1 10 true
execute if data storage supervivencia-zombis {Horda:"2"} run effect give @s jump_boost infinite 3 true
execute if data storage supervivencia-zombis {Horda:"2"} run effect give @s speed infinite 2 true
execute if data storage supervivencia-zombis {Horda:"2"} run effect give @s night_vision infinite 0 true
execute if data storage supervivencia-zombis {Horda:"2"} run effect give @s resistance infinite 0 true
execute if data storage supervivencia-zombis {Horda:"2"} run effect give @s strength infinite 6 true

execute if data storage supervivencia-zombis {Horda:"3"} run effect give @s health_boost infinite 34 true
execute if data storage supervivencia-zombis {Horda:"3"} run effect give @s instant_health 1 10 true
execute if data storage supervivencia-zombis {Horda:"3"} run effect give @s jump_boost infinite 6 true
execute if data storage supervivencia-zombis {Horda:"3"} run effect give @s speed infinite 4 true
execute if data storage supervivencia-zombis {Horda:"3"} run effect give @s night_vision infinite 0 true
execute if data storage supervivencia-zombis {Horda:"3"} run effect give @s resistance infinite 1 true
execute if data storage supervivencia-zombis {Horda:"3"} run effect give @s strength infinite 10 true

execute if data storage supervivencia-zombis {Horda:"4"} run effect give @s health_boost infinite 39 true
execute if data storage supervivencia-zombis {Horda:"4"} run effect give @s instant_health 1 10 true
execute if data storage supervivencia-zombis {Horda:"4"} run effect give @s jump_boost infinite 9 true
execute if data storage supervivencia-zombis {Horda:"4"} run effect give @s speed infinite 4 true
execute if data storage supervivencia-zombis {Horda:"4"} run effect give @s night_vision infinite 0 true
execute if data storage supervivencia-zombis {Horda:"4"} run effect give @s resistance infinite 2 true
execute if data storage supervivencia-zombis {Horda:"4"} run effect give @s strength infinite 14 true

execute if data storage supervivencia-zombis {Horda:"5"} run effect give @s health_boost infinite 44 true
execute if data storage supervivencia-zombis {Horda:"5"} run effect give @s instant_health 1 10 true
execute if data storage supervivencia-zombis {Horda:"5"} run effect give @s jump_boost infinite 9 true
execute if data storage supervivencia-zombis {Horda:"5"} run effect give @s speed infinite 6 true
execute if data storage supervivencia-zombis {Horda:"5"} run effect give @s night_vision infinite 0 true
execute if data storage supervivencia-zombis {Horda:"5"} run effect give @s resistance infinite 3 true
execute if data storage supervivencia-zombis {Horda:"5"} run effect give @s strength infinite 19 true
execute as @s[tag=Faraon] run effect give @s resistance infinite 3 true
execute as @s[tag=Militar] run effect give @s resistance infinite 3 true