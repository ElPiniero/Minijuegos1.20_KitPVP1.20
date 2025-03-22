effect clear @s[tag=!supervivencia-z]
clear @s
function kitpvp:kits/remover_tag
advancement grant @s only kitpvp:kitpvp/primer_kit
tag @s add sin_iniciar
tag @s add Stray
item replace entity @s armor.head with leather_helmet[unbreakable={},enchantments={protection:4},dyed_color=9086719,trim={material:"minecraft:lapis",pattern:"minecraft:silence"}]
item replace entity @s armor.chest with chainmail_chestplate[unbreakable={},enchantments={protection:5,projectile_protection:5},trim={material:"minecraft:lapis",pattern:"minecraft:raiser"}]
item replace entity @s armor.legs with diamond_leggings[unbreakable={},enchantments={protection:5},trim={material:"minecraft:lapis",pattern:"minecraft:ward"}]
item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={protection:4},dyed_color=9086719,trim={material:"minecraft:quartz",pattern:"minecraft:silence"}]
item replace entity @s[tag=!supervivencia-z] hotbar.0 with bow[unbreakable={},enchantments={power:7,punch:1,flame:2}]
item replace entity @s[tag=supervivencia-z] hotbar.0 with bow[unbreakable={},enchantments={power:30,punch:4,flame:10}]
item replace entity @s[tag=!supervivencia-z] hotbar.1 with crossbow[unbreakable={},enchantments={quick_charge:2,piercing:1,"minecraft:power":3}]
item replace entity @s[tag=supervivencia-z] hotbar.1 with crossbow[unbreakable={},enchantments={quick_charge:4,piercing:4,"minecraft:power":6}]
item replace entity @s[tag=!supervivencia-z] hotbar.2 with crossbow[unbreakable={},enchantments={quick_charge:2,multishot:1,"minecraft:power":3}]
item replace entity @s[tag=supervivencia-z] hotbar.2 with crossbow[unbreakable={},enchantments={quick_charge:5,multishot:1,"minecraft:power":6}]
item replace entity @s hotbar.3 with cooked_rabbit 16
give @s milk_bucket[max_stack_size=10,consumable={consume_seconds:1,on_consume_effects:[{type:"clear_all_effects"}]}] 10
item replace entity @s[tag=!supervivencia-z] hotbar.5 with tipped_arrow[custom_name='[{"text":"Flecha paralizante","italic": false}]',potion_contents={custom_color:63487,custom_effects:[{id:"minecraft:slowness",duration:600,amplifier:3,show_particles:1b},{id:"darkness",duration:600,amplifier:0,show_particles:1b}]}] 64
item replace entity @s[tag=!supervivencia-z] hotbar.6 with tipped_arrow[custom_name='[{"text":"Flecha retrasadora","italic": false}]',potion_contents={custom_color:6396588,custom_effects:[{id:"minecraft:weakness",duration:600,amplifier:0,show_particles:1b},{id:"mining_fatigue",duration:600,amplifier:2,show_particles:1b}]}] 64
item replace entity @s[tag=!supervivencia-z] hotbar.7 with tipped_arrow[custom_name='[{"text":"Flecha de daño instantaneo","italic": false}]',potion_contents={custom_color:11960949,custom_effects:[{id:"minecraft:instant_damage",duration:1,amplifier:1,show_particles:1b}]}] 64
item replace entity @s[tag=supervivencia-z] hotbar.5 with tipped_arrow[custom_name='[{"text":"Flecha paralizante","italic": false}]',potion_contents={custom_color:63487,custom_effects:[{id:"minecraft:slowness",duration:1200,amplifier:6,show_particles:1b},{id:"levitation",duration:600,amplifier:0,show_particles:1b}]}] 64
item replace entity @s[tag=supervivencia-z] hotbar.6 with tipped_arrow[custom_name='[{"text":"Flecha retrasadora","italic": false}]',potion_contents={custom_color:6396588,custom_effects:[{id:"minecraft:weakness",duration:1200,amplifier:4,show_particles:1b},{id:"wither",duration:1200,amplifier:3,show_particles:1b}]}] 64
item replace entity @s[tag=supervivencia-z] hotbar.7 with tipped_arrow[custom_name='[{"text":"Flecha de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:10,amplifier:4,show_particles:1b}]}] 64
item replace entity @s[tag=!supervivencia-z] hotbar.8 with tipped_arrow[custom_name='[{"text":"Flecha de absorcion","italic": false}]',potion_contents={custom_color:16514816,custom_effects:[{id:"minecraft:absorption",duration:1800,amplifier:4,show_particles:1b}]}] 16
item replace entity @s[tag=supervivencia-z] hotbar.8 with tipped_arrow[custom_name='[{"text":"Flecha de curacion instantanea","italic": false}]',potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:instant_health",duration:10,amplifier:5,show_particles:1b}]}] 16
item replace entity @s weapon.offhand with ender_pearl 6
give @s[tag=supervivencia-z] minecraft:written_book[minecraft:written_book_content={author:"El Iluminado",generation:0,pages:[{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"#ff6600","text":"Bebida de Mandarina"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Mandarina"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," ",{"color":"red","text":"Bebida de Fresa"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Fresa"},"color":"dark_aqua","text":"[6 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gold","text":"Bebida de Durazno"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Bebida_Durazno"},"color":"dark_aqua","text":"[8 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_green","text":"Recargas de Kit"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Recarga_Kit"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'},{raw:'[["",{"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," 32 Flechas de ",{"color":"red","text":"Curacion V"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Flecha"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"yellow","text":"*"}," Totem de la ",{"color":"gold","text":"Inmortalidad"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Totems"},"color":"dark_aqua","text":"[4 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"aqua","text":"*"}," ",{"color":"light_purple","text":"Manzana dorada encantada"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger ManzanaEncantada"},"color":"dark_aqua","text":"[1 Diamante]","underlined":true}]]'},{raw:'[["",{"bold":true,"color":"dark_red","obfuscated":true,"text":"a"},{"color":"dark_red","text":" "},{"bold":true,"color":"dark_red","text":"[°-=Carta=-°]"},{"color":"dark_red","text":" "},{"color":"dark_red","obfuscated":true,"text":"a"},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_blue","text":"Congelantes"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Congelante"},"color":"dark_aqua","text":"[10 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"gray","text":"Golem de"},{"color":"light_purple","text":" "},{"color":"dark_red","text":"Hierro"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Golem"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true},"\\n\\n",{"bold":true,"color":"light_purple","text":"*"}," ",{"color":"dark_red","text":"Torreta"},"\\n",{"clickEvent":{"action":"run_command","value":"/trigger Torreta"},"color":"dark_aqua","text":"[16 Diamantes]","underlined":true}]]'}],resolved:1b,title:{raw:"[°-=Carta_de_Productos=-°]"}},minecraft:custom_name='["",{"text":"a","italic":false,"color":"dark_red","obfuscated":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"[°-=Carta_de_Productos=-°]","bold":true},{"italic":false,"color":"dark_red","text":" "},{"italic":false,"color":"dark_red","text":"a","obfuscated":true}]']
give @s minecraft:carrot_on_a_stick[minecraft:lore=['[{"text":"Localiza al jugador mas","italic":false}]','[{"text":"cercano a una distancia","italic":false}]','[{"text":"de 100 metros","italic":false}]'],minecraft:custom_name='[{"text":"Rastreador","italic":false,"color":"green"}]',item_model="minecraft:compass"] 1
tellraw @s[tag=!supervivencia-z] [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"M","color":"blue"},{"text":"a","color":"#3e40fd"},{"text":"n","color":"#3d41fc"},{"text":"t","color":"#3d42fc"},{"text":"e","color":"#3c43fb"},{"text":"n ","color":"#3c44fb"},{"text":"c","color":"#3b46fa"},{"text":"a","color":"#3a47f9"},{"text":"r","color":"#3a48f9"},{"text":"g","color":"#3949f8"},{"text":"a","color":"#394af8"},{"text":"d","color":"#384cf7"},{"text":"a","color":"#374df6"},{"text":"s ","color":"#374ef6"},{"text":"t","color":"#364ff5"},{"text":"u","color":"#3650f5"},{"text":"s ","color":"#3551f4"},{"text":"b","color":"#3453f3"},{"text":"a","color":"#3454f3"},{"text":"l","color":"#3355f2"},{"text":"l","color":"#3356f2"},{"text":"e","color":"#4857f1"},{"text":"s","color":"#4859f0"},{"text":"t","color":"#315af0"},{"text":"a","color":"#305bef"},{"text":"s ","color":"#305cef"},{"text":"c","color":"#2f5dee"},{"text":"o","color":"#2f5fed"},{"text":"n ","color":"#2e60ed"},{"text":"l","color":"#2d61ec"},{"text":"a","color":"#2d62ec"},{"text":"s ","color":"#2c63eb"},{"text":"f","color":"#2c64ea"},{"text":"l","color":"#2b66ea"},{"text":"e","color":"#2a67e9"},{"text":"c","color":"#2a68e9"},{"text":"h","color":"#2969e8"},{"text":"a","color":"#296ae7"},{"text":"s ","color":"#286ce7"},{"text":"v","color":"#286de6"},{"text":"e","color":"#276ee6"},{"text":"n","color":"#266fe5"},{"text":"e","color":"#2670e4"},{"text":"n","color":"#2572e4"},{"text":"o","color":"#2573e3"},{"text":"s","color":"#2474e3"},{"text":"a","color":"#2375e2"},{"text":"s","color":"#2376e1"},{"text":", ","color":"#2277e1"},{"text":"p","color":"#2279e0"},{"text":"a","color":"#217ae0"},{"text":"r","color":"#207bdf"},{"text":"a ","color":"#207cde"},{"text":"e","color":"#1f7dde"},{"text":"n","color":"#1f7fdd"},{"text":"v","color":"#1e80dd"},{"text":"e","color":"#1e81dc"},{"text":"n","color":"#1d82db"},{"text":"e","color":"#1c83db"},{"text":"n","color":"#1c85da"},{"text":"a","color":"#1b86da"},{"text":"r ","color":"#1b87d9"},{"text":"r","color":"#1a88d8"},{"text":"a","color":"#1989d8"},{"text":"p","color":"#198ad7"},{"text":"i","color":"#188cd7"},{"text":"d","color":"#188dd6"},{"text":"o ","color":"#178ed5"},{"text":"a ","color":"#168fd5"},{"text":"t","color":"#1690d4"},{"text":"u ","color":"#1592d4"},{"text":"o","color":"#1593d3"},{"text":"b","color":"#1494d2"},{"text":"j","color":"#1495d2"},{"text":"e","color":"#1396d1"},{"text":"t","color":"#1298d1"},{"text":"i","color":"#1299d0"},{"text":"v","color":"#119acf"},{"text":"o ","color":"#119bcf"},{"text":"y ","color":"#109cce"},{"text":"d","color":"#0f9dce"},{"text":"i","color":"#0f9fcd"},{"text":"s","color":"#0ea0cc"},{"text":"p","color":"#0ea1cc"},{"text":"a","color":"#0da2cb"},{"text":"r","color":"#0ca3cb"},{"text":"a","color":"#0ca5ca"},{"text":"r","color":"#0ba6c9"},{"text":"l","color":"#0ba7c9"},{"text":"e ","color":"#0aa8c8"},{"text":"t","color":"#0aa9c8"},{"text":"u ","color":"#09abc7"},{"text":"d","color":"#08acc6"},{"text":"a","color":"#08adc6"},{"text":"\u00f1","color":"#07aec5"},{"text":"o ","color":"#07afc5"},{"text":"i","color":"#06b0c4"},{"text":"n","color":"#05b2c3"},{"text":"s","color":"#05b3c3"},{"text":"t","color":"#04b4c2"},{"text":"a","color":"#04b5c2"},{"text":"n","color":"#03b6c1"},{"text":"t","color":"#02b8c0"},{"text":"a","color":"#02b9c0"},{"text":"n","color":"#01babf"},{"text":"e","color":"#01bbbf"},{"text":"o ","color":"#00bcbe"},{"text":"I","color":"dark_aqua"},{"text":"I","color":"#01bebe"},{"text":", ","color":"#03bebe"},{"text":"t","color":"#05bebe"},{"text":"a","color":"#07bebe"},{"text":"m","color":"#08bebe"},{"text":"b","color":"#0abebe"},{"text":"i","color":"#0cbebe"},{"text":"e","color":"#0ebebe"},{"text":"n ","color":"#0fbebe"},{"text":"p","color":"#11bebe"},{"text":"u","color":"#13bebe"},{"text":"e","color":"#15bebe"},{"text":"d","color":"#17bebe"},{"text":"e","color":"#18bebe"},{"text":"s ","color":"#1abebe"},{"text":"u","color":"#1cbebe"},{"text":"s","color":"#1ebebe"},{"text":"a","color":"#1fbebe"},{"text":"r ","color":"#21bebe"},{"text":"t","color":"#23bebe"},{"text":"u","color":"#25bebe"},{"text":"s ","color":"#27bebe"},{"text":"f","color":"#28bebe"},{"text":"l","color":"#2abebe"},{"text":"e","color":"#2cbebe"},{"text":"c","color":"#2ebebe"},{"text":"h","color":"#2fbebe"},{"text":"a","color":"#31bebe"},{"text":"s ","color":"#33bebe"},{"text":"d","color":"#35bebe"},{"text":"e ","color":"#37bebe"},{"text":"a","color":"#38bebe"},{"text":"b","color":"#3abebe"},{"text":"s","color":"#3cbebe"},{"text":"o","color":"#3ebebe"},{"text":"r","color":"#3fbebe"},{"text":"c","color":"#41bebe"},{"text":"i","color":"#43bebe"},{"text":"o","color":"#45bebe"},{"text":"n ","color":"#47bebe"},{"text":"c","color":"#48bebe"},{"text":"a","color":"#4abebe"},{"text":"d","color":"#4cbebe"},{"text":"a ","color":"#4ebebe"},{"text":"q","color":"#4fbebe"},{"text":"u","color":"#51bebe"},{"text":"e ","color":"#53bebe"},{"text":"n","color":"#55bebe"},{"text":"e","color":"#57bebe"},{"text":"c","color":"#58bebe"},{"text":"e","color":"#5abebe"},{"text":"s","color":"#5cbebe"},{"text":"i","color":"#5ebebe"},{"text":"t","color":"#5fbebe"},{"text":"e","color":"#61bebe"},{"text":"s ","color":"#63bebe"},{"text":"d","color":"#65bebe"},{"text":"i","color":"#66bebe"},{"text":"s","color":"#68bebe"},{"text":"p","color":"#6abebe"},{"text":"a","color":"#6cbebe"},{"text":"r","color":"#6ebebe"},{"text":"a","color":"#6fbebe"},{"text":"n","color":"#71bebe"},{"text":"d","color":"#73bebe"},{"text":"o","color":"#75bebe"},{"text":"t","color":"#76bebe"},{"text":"e","color":"#78bebe"},{"text":"l","color":"#7abebe"},{"text":"a","color":"#7cbebe"},{"text":"s ","color":"#7ebebe"},{"text":"a ","color":"#7fbebe"},{"text":"t","color":"#81bebe"},{"text":"i","color":"#83bebe"},{"text":", ","color":"#85bebe"},{"text":"s","color":"#86bebe"},{"text":"o","color":"#88bebe"},{"text":"l","color":"#8abebe"},{"text":"o ","color":"#8cbebe"},{"text":"c","color":"#8ebebe"},{"text":"u","color":"#8fbebe"},{"text":"i","color":"#91bebe"},{"text":"d","color":"#93bebe"},{"text":"a ","color":"#95bebe"},{"text":"d","color":"#96bebe"},{"text":"e ","color":"#98bebe"},{"text":"n","color":"#9abebe"},{"text":"o ","color":"#9cbebe"},{"text":"h","color":"#9ebebe"},{"text":"a","color":"#9fbebe"},{"text":"c","color":"#a1bebe"},{"text":"e","color":"#a3bebe"},{"text":"r ","color":"#a5bebe"},{"text":"e","color":"#a6bebe"},{"text":"l ","color":"#a8bebe"},{"text":"c","color":"#aabebe"},{"text":"o","color":"#acbebe"},{"text":"m","color":"#aebebe"},{"text":"b","color":"#afbebe"},{"text":"o ","color":"#b1bebe"},{"text":"a","color":"#b3bebe"},{"text":"l","color":"#b5bebe"},{"text":"r","color":"#b6bebe"},{"text":"e","color":"#b8bebe"},{"text":"v","color":"#babebe"},{"text":"e","color":"#bcbebe"},{"text":"z","color":"gray"}]
tellraw @s[tag=supervivencia-z] [{"text":"","bold": false},{"text":"\u2757 ","color":"red","bold": true},{"text":"E","color":"blue"},{"text":"l","color":"#3e40fd"},{"text":"i","color":"#3d41fc"},{"text":"g","color":"#3c43fb"},{"text":"e ","color":"#3c44fb"},{"text":"t","color":"#3b46fa"},{"text":"u ","color":"#3a47f9"},{"text":"a","color":"#3949f8"},{"text":"r","color":"#394af8"},{"text":"m","color":"#384cf7"},{"text":"a ","color":"#374df6"},{"text":"d","color":"#364ff5"},{"text":"e ","color":"#3650f5"},{"text":"p","color":"#3552f4"},{"text":"r","color":"#3453f3"},{"text":"e","color":"#3455f2"},{"text":"f","color":"#3356f2"},{"text":"e","color":"#3257f1"},{"text":"r","color":"#3159f0"},{"text":"e","color":"#315aef"},{"text":"n","color":"#305cef"},{"text":"c","color":"#2f5dee"},{"text":"i","color":"#2e5fed"},{"text":"a ","color":"#2e60ec"},{"text":"y ","color":"#2d62ec"},{"text":"m","color":"#2c63eb"},{"text":"a","color":"#2c65ea"},{"text":"n","color":"#2b66ea"},{"text":"t","color":"#2a68e9"},{"text":"\u00e9","color":"#2969e8"},{"text":"n ","color":"#296be7"},{"text":"u","color":"#286ce7"},{"text":"n ","color":"#276de6"},{"text":"d","color":"#266fe5"},{"text":"i","color":"#2670e4"},{"text":"s","color":"#2572e4"},{"text":"p","color":"#2473e3"},{"text":"a","color":"#2475e2"},{"text":"r","color":"#2376e1"},{"text":"o ","color":"#2278e1"},{"text":"s","color":"#2179e0"},{"text":"e","color":"#217bdf"},{"text":"g","color":"#207cde"},{"text":"u","color":"#1f7ede"},{"text":"i","color":"#1e7fdd"},{"text":"d","color":"#1e81dc"},{"text":"o","color":"#1d82db"},{"text":", ","color":"#1c84db"},{"text":"m","color":"#1c85da"},{"text":"a","color":"#1b86d9"},{"text":"n","color":"#1a88d9"},{"text":"t","color":"#1989d8"},{"text":"e","color":"#198bd7"},{"text":"n","color":"#188cd6"},{"text":"i","color":"#178ed6"},{"text":"e","color":"#168fd5"},{"text":"n","color":"#1691d4"},{"text":"d","color":"#1592d3"},{"text":"o ","color":"#1494d3"},{"text":"d","color":"#1495d2"},{"text":"i","color":"#1397d1"},{"text":"s","color":"#1298d0"},{"text":"t","color":"#119ad0"},{"text":"a","color":"#119bcf"},{"text":"n","color":"#109cce"},{"text":"c","color":"#0f9ecd"},{"text":"i","color":"#0e9fcd"},{"text":"a ","color":"#0ea1cc"},{"text":"t","color":"#0da2cb"},{"text":"a","color":"#0ca4ca"},{"text":"m","color":"#0ca5ca"},{"text":"b","color":"#0ba7c9"},{"text":"i","color":"#0aa8c8"},{"text":"\u00e9","color":"#09aac7"},{"text":"n","color":"#09abc7"},{"text":". ","color":"#08adc6"},{"text":"N","color":"#07aec5"},{"text":"o ","color":"#06b0c5"},{"text":"s","color":"#06b1c4"},{"text":"o","color":"#05b2c3"},{"text":"l","color":"#04b4c2"},{"text":"o ","color":"#04b5c2"},{"text":"p","color":"#03b7c1"},{"text":"u","color":"#02b8c0"},{"text":"e","color":"#01babf"},{"text":"d","color":"#01bbbf"},{"text":"e","color":"#00bdbe"},{"text":"s ","color":"#01bebe"},{"text":"a","color":"#03bebe"},{"text":"t","color":"#05bebe"},{"text":"a","color":"#07bebe"},{"text":"c","color":"#09bebe"},{"text":"a","color":"#0cbebe"},{"text":"r ","color":"#0ebebe"},{"text":"c","color":"#10bebe"},{"text":"o","color":"#12bebe"},{"text":"n ","color":"#14bebe"},{"text":"t","color":"#17bebe"},{"text":"u","color":"#19bebe"},{"text":"s ","color":"#1bbebe"},{"text":"f","color":"#1dbebe"},{"text":"l","color":"#1fbebe"},{"text":"e","color":"#22bebe"},{"text":"c","color":"#24bebe"},{"text":"h","color":"#26bebe"},{"text":"a","color":"#28bebe"},{"text":"s ","color":"#2abebe"},{"text":"d","color":"#2dbebe"},{"text":"e ","color":"#2fbebe"},{"text":"c","color":"#31bebe"},{"text":"u","color":"#33bebe"},{"text":"r","color":"#35bebe"},{"text":"a","color":"#38bebe"},{"text":"c","color":"#3abebe"},{"text":"i","color":"#3cbebe"},{"text":"\u00f3","color":"#3ebebe"},{"text":"n ","color":"#40bebe"},{"text":"s","color":"#42bebe"},{"text":"i","color":"#45bebe"},{"text":"n","color":"#47bebe"},{"text":"o ","color":"#49bebe"},{"text":"q","color":"#4bbebe"},{"text":"u","color":"#4dbebe"},{"text":"e ","color":"#50bebe"},{"text":"p","color":"#52bebe"},{"text":"u","color":"#54bebe"},{"text":"e","color":"#56bebe"},{"text":"d","color":"#58bebe"},{"text":"e","color":"#5bbebe"},{"text":"s ","color":"#5dbebe"},{"text":"s","color":"#5fbebe"},{"text":"a","color":"#61bebe"},{"text":"n","color":"#63bebe"},{"text":"a","color":"#66bebe"},{"text":"r ","color":"#68bebe"},{"text":"a ","color":"#6abebe"},{"text":"l","color":"#6cbebe"},{"text":"o","color":"#6ebebe"},{"text":"s ","color":"#71bebe"},{"text":"r","color":"#73bebe"},{"text":"e","color":"#75bebe"},{"text":"f","color":"#77bebe"},{"text":"u","color":"#79bebe"},{"text":"e","color":"#7cbebe"},{"text":"r","color":"#7ebebe"},{"text":"z","color":"#80bebe"},{"text":"o","color":"#82bebe"},{"text":"s ","color":"#84bebe"},{"text":"e","color":"#87bebe"},{"text":"n ","color":"#89bebe"},{"text":"c","color":"#8bbebe"},{"text":"o","color":"#8dbebe"},{"text":"m","color":"#8fbebe"},{"text":"b","color":"#92bebe"},{"text":"a","color":"#94bebe"},{"text":"t","color":"#96bebe"},{"text":"e ","color":"#98bebe"},{"text":"(","color":"#9abebe"},{"text":"T","color":"#9dbebe"},{"text":"o","color":"#9fbebe"},{"text":"r","color":"#a1bebe"},{"text":"r","color":"#a3bebe"},{"text":"e","color":"#a5bebe"},{"text":"t","color":"#a8bebe"},{"text":"a","color":"#aabebe"},{"text":"s ","color":"#acbebe"},{"text":"y ","color":"#aebebe"},{"text":"G","color":"#b0bebe"},{"text":"o","color":"#b3bebe"},{"text":"l","color":"#b5bebe"},{"text":"e","color":"#b7bebe"},{"text":"m","color":"#b9bebe"},{"text":"s","color":"#bbbebe"},{"text":")","color":"gray"}]
playsound entity.skeleton.converted_to_stray master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1
execute as @s[tag=!supervivencia-z] run fill 11 235 147 11 234 147 iron_bars
execute as @s[tag=!supervivencia-z] run playsound entity.zombie.attack_iron_door master @a[tag=!sesion_no_iniciada] ~ ~ ~ 1 0.7
execute as @s[tag=!supervivencia-z] run schedule function kitpvp:kits/stray/inicio 4s
execute as @s[tag=supervivencia-z,tag=!yamero-survival-z] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/iniciando
execute as @s[tag=supervivencia-z,tag=!s-z-afavor] run function kitpvp:cuerpo_del_juego/votos/survival-z/inicio/s-z_a_favor